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


enum WebApiError: Error {
    /// トークンが不正
    case invalidToken
    /// パラメータが不正
    case invalidParameters
    /// ユーザが見つからない
    case userNotFound
}

public struct Failure: Error, Equatable {}


/// 個別のItem要素にアクセスしてデータを取得する処理の基底クラス
public class ItmeServiceBase<ItemType> : ServiceBase
where ItemType : ItemResponseBase
{
    
    //イニシャライザ
    public override  init(ServiceConfig : ServiceConfig , SiteId : Int64){
        
        super.init(ServiceConfig: ServiceConfig, SiteId: SiteId)
        
    }
    
    private func MakeJSONDecoder() -> JSONDecoder{
        
        let decoder = JSONDecoder()
        //decoder.dateDecodingStrategy = .iso8601
        
        decoder.dateDecodingStrategy = .formatted({
            let f = DateFormatter()
            f.calendar = Calendar(identifier: .gregorian)
            f.locale = .current
            //サンプル
            //2020-10-20T20:05:08
            //2020-10-20T20:36:17
            f.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss"
            return f
        }())
        
        return decoder
        
    }
    
    // 要素を取得する
    public func GetItem( itemId : Int64 ) -> AnyPublisher< ItemApiResults<ItemType>, Failure > {
        
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

            /*
             // cURLパラメータとして発行したリクエストを再現する
             request.cURLDescription { description in
             print(description)
             }
             */
            
            let p : DataResponsePublisher<ItemApiResults<ItemType>> =
                request.publishDecodable(type: ItemApiResults<ItemType>.self,queue: .main)
            
            let xx : AnyPublisher< ItemApiResults<ItemType>, Failure > = p.tryMap({ data -> Data in

                if let d = data.data {
                    return d;
                }
                
                throw WebApiError.invalidToken
            })
            .decode(type: ItemApiResults<ItemType>.self, decoder: MakeJSONDecoder())
            .mapError { _ in Failure() }
            .eraseToAnyPublisher()
            
            return xx
        }
    }
    
}
