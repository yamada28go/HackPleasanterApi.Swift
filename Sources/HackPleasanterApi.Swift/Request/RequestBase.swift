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

// リクエスト処理基底クラス
open class RequestBase : Codable
{
    /// <summary>
    /// 対象とするAPIバージョン
    /// </summary>
    public var ApiVersion : String?
    /// <summary>
    /// アクセス用のAPIキー
    /// </summary>
    public var ApiKey : String?
    
    
    // --- --- --- ---
    // JSON変換処理
    
    enum CodingKeys: String, CodingKey {
        case ApiVersion
        case ApiKey
    }
    
    // クライアント側で値が作れるように、
    // nil引数で値を初期化できるように作成する
    public  init() {
    }
    
    public required init(from decoder: Decoder) throws {
        
        if let values = try? decoder.container(keyedBy: CodingKeys.self){
            
            self.ApiVersion = try? values.decode(String.self, forKey: .ApiVersion)
            self.ApiKey = try? values.decode(String.self, forKey: .ApiKey)
            
        }
        
    }
    
    public  func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        if let d = ApiVersion{
            try container.encode(d,forKey: .ApiVersion)
        }
        
        if let d = ApiKey{
            try container.encode(d,forKey: .ApiKey)
        }
        
    }
    
}
