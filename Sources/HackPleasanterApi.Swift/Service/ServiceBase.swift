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

// APIアクセスサービスの規定クラス
open class ServiceBase{
    
    /// <summary>
    /// 対象としているサイトID
    /// </summary>
    var SiteId : Int64
    
    // サービスの基礎設定
    var ServiceConfig : ServiceConfig
    
    //イニシャライザ
    public init(ServiceConfig : ServiceConfig , SiteId : Int64){
        
        self.ServiceConfig = ServiceConfig
        self.SiteId = SiteId
        
    }
    
    /// 認証用のパラメータを生成する
    /// - Returns: パラメーターオブジェクト
    func MakeAuthenticationParameters() -> [String: Any] {
        
        let parameters: [String: Any] = ["ApiVersion": self.ServiceConfig.ApiVersion,
                                         "ApiKey":self.ServiceConfig.ApiKey]
        
        return parameters;
    }
    
    
    /// HTTP接続用のヘッダを生成する
    /// - Returns: ヘッダオブジェクト
    func MakeHTTPHeaders() -> HTTPHeaders{
        
        let headers: HTTPHeaders = ["Content-Type": "application/json"]
        return headers;
        
    }
    
}
