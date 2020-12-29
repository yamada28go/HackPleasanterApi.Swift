/**
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 * */

import Foundation
import Alamofire
import Combine

/// APIエラー定義
public enum PleasanterAPIError : Error{
    // Alamofireの通信エラー
    case AlamofireError( AFError )
    // デコードエラー
    case SerializeError( DecodingError )
    
    // API実行時エラー
    case APIError
    // その他不明エラー
    case Unknown(Error)
    
}



/// 個別のItem要素にアクセスしてデータを取得する処理の基底クラス
public class ItmeServiceBase< ItemType: PleasanterItem ,ResponseType:ItemResponseBase<ItemType> > : ServiceBase{
    
    //イニシャライザ
    public override init(ServiceConfig : ServiceConfig , SiteId : Int64){
        
        super.init(ServiceConfig: ServiceConfig, SiteId: SiteId)
        
    }
    
    
    // Generics関数には直接型指定ができないので、個別に指定する
    private class CommunicationHelper<
        ResultsType : ApiResultsBase
    >
    {
        
        private func MakeJSONDecoder() -> JSONDecoder{
            
            let decoder = JSONDecoder()
            //decoder.dateDecodingStrategy = .iso8601
            
            decoder.dateDecodingStrategy = .formatted({
                let f = DateFormatter()
                f.calendar = Calendar(identifier: .gregorian)
                f.locale = .current
                
                f.calendar = Calendar(identifier: .gregorian)
                f.locale = Locale(identifier: "ja_JP")
                f.timeZone = TimeZone(identifier:  "Asia/Tokyo")
                
                //サンプル
                //2020-10-20T20:05:08
                //2020-10-20T20:36:17
                f.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss"
                return f
            }())
            
            return decoder
            
        }
        
        // データ取得の基本処理
        // 共通で使用できるデータ変換処理などを一箇所にまとる
        public func DoCommunication ( request:DataRequest , specialProcessing : ((ResultsType) -> Void)? = nil ) ->
        AnyPublisher< ResultsType, PleasanterAPIError >{
            
            let p : DataResponsePublisher<ResultsType> =
                request.publishDecodable(type: ResultsType.self,queue: .main)
            
            
            let xx : AnyPublisher< ResultsType, PleasanterAPIError > = p
                .tryMap({ data  in
                    
                    if let d = data.data {
                        return d;
                    }
                    
                    // データが返ってこない場合、
                    throw PleasanterAPIError.APIError
                })
                .decode(type: ResultsType.self, decoder: MakeJSONDecoder())
                .tryMap({
                    
                    // エラ〜コードチェック
                    if  $0.StatusCode != 200{
                        throw PleasanterAPIError.APIError
                    }
                    
                    // 特殊処理が指定されていたら実行する
                    if let c = specialProcessing{
                        c($0)
                    }
                    
                    // 捜査用のデータたと関連付けを実施
                    //                    $0.Response?.SetupDataItems()
                    
                    return $0
                } )
                .mapError {
                    dump($0)
                    switch $0 {
                    case let e as AFError:
                        return PleasanterAPIError.AlamofireError(e)
                    case let e as  DecodingError:
                        return PleasanterAPIError.SerializeError(e)
                    default:
                        return PleasanterAPIError.Unknown($0)
                    }
                }
                .eraseToAnyPublisher()
            
            return xx
            
        }
        
    }
    
    
    // 戻り値の型を指定する
    public typealias GetItemResultsType = ItemApiResults<ItemType , SingleItemResponse<ItemType> >
    
    // 要素を取得する
    public func GetItem( itemId : Int64 ) ->
    AnyPublisher< GetItemResultsType, PleasanterAPIError > {
        
        do {
            
            // 検索用のURL
            let searchUrl = "\(self.ServiceConfig.BaseUrl)/api/items/\(itemId)/get"
            
            let parameters = MakeAuthenticationParameters()
            let headers = MakeHTTPHeaders()
            let request = AF.request(searchUrl, method: .post, parameters:  parameters,
                                     encoding: JSONEncoding.default,
                                     //encoder: decoder,
                                     headers: headers
            )
            
            let gh = CommunicationHelper<GetItemResultsType>()
            let x = gh.DoCommunication(request:request , specialProcessing: {
                $0.Response?.SetupDataItems()
            });
            return x;
            
            /*
             // cURLパラメータとして発行したリクエストを再現する
             request.cURLDescription { description in
             print(description)
             }
             */
        }
    }
    // 戻り値の型を指定する
    public typealias GetFindItemType = ItemApiResults<ItemType , MultipleItemResponse<ItemType> >
    
    // 複数要素を取得する
    public func FindItem( query : FindItemsRequest ) ->
    AnyPublisher< GetFindItemType, PleasanterAPIError > {
        
        query.ApiKey = self.ServiceConfig.ApiKey
        query.ApiVersion = self.ServiceConfig.ApiVersion
        
        // 検索用のURL
        let searchUrl = "\(self.ServiceConfig.BaseUrl)/api/items/\(SiteId)/get"
        
        /*
         let enc = URLEncodedFormParameterEncoder(
         encoder: JSONParameterEncoder(),
         destination:URLEncodedFormParameterEncoder.Destination.httpBody)
         //        enc.destination = URLEncodedFormParameterEncoder.Destination.httpBody
         */
        
        let enc = JSONParameterEncoder()
        // let parameters = MakeAuthenticationParameters()
        let headers = MakeHTTPHeaders()
        let request = AF.request(searchUrl, method: .post, parameters:  query,
                                 encoder: enc,
                                 //encoder: decoder,
                                 headers: headers
        )
        // cURLパラメータとして発行したリクエストを再現する
        request.cURLDescription { description in
            print(description)
        }
        
        // 通信実行
        let gh = CommunicationHelper< GetFindItemType >()
        let x = gh.DoCommunication(request:request , specialProcessing: {
            $0.Response?.SetupDataItems()
        });
        return x;
        
    }
    
    
    // アイテムを生成する
    public func CreateItem( query : PleasanterItem ) ->
    AnyPublisher< GetFindItemType, PleasanterAPIError > {
        
        let q = query.rawItem
        
        q.ApiKey = self.ServiceConfig.ApiKey
        q.ApiVersion = self.ServiceConfig.ApiVersion
        
        // 検索用のURL
        let searchUrl = "\(self.ServiceConfig.BaseUrl)/api/items/\(SiteId)/create"
        
        /*
         let enc = URLEncodedFormParameterEncoder(
         encoder: JSONParameterEncoder(),
         destination:URLEncodedFormParameterEncoder.Destination.httpBody)
         //        enc.destination = URLEncodedFormParameterEncoder.Destination.httpBody
         */
        
        let enc = JSONParameterEncoder()
        // let parameters = MakeAuthenticationParameters()
        let headers = MakeHTTPHeaders()
        let request = AF.request(searchUrl, method: .post, parameters:  q,
                                 encoder: enc,
                                 //encoder: decoder,
                                 headers: headers
        )
        
        
        // cURLパラメータとして発行したリクエストを再現する
        request.cURLDescription { description in
            print(description)
        }
        
        
        
        // 通信実行
        let gh = CommunicationHelper< GetFindItemType >()
        let x = gh.DoCommunication(request:request , specialProcessing: {
            $0.Response?.SetupDataItems()
        });
        return x;
        
    }
    
    
    // 要素を削除する
    public func DeleteItem( itemId : Int64 ) ->
    AnyPublisher< DeleteApiResults, PleasanterAPIError > {
        
        // 検索用のURL
        let searchUrl = "\(self.ServiceConfig.BaseUrl)/api/items/\(SiteId)/delete"
        
        let parameters = MakeAuthenticationParameters()
        let headers = MakeHTTPHeaders()
        let request = AF.request(searchUrl, method: .post, parameters:  parameters,
                                 encoding: JSONEncoding.default,
                                 //encoder: decoder,
                                 headers: headers
        )
        
        // 通信実行
        let gh = CommunicationHelper< DeleteApiResults >()
        let x = gh.DoCommunication(request:request );
        return x;
        
    }
    
}

