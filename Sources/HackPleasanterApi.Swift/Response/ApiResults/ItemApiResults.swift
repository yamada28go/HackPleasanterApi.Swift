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

/// <summary>
/// Item系統のAPI戻り値
/// </summary>
open class ItemApiResults< ResponseItemType , ResponseType > : ApiResultsBase
where ResponseItemType :PleasanterItem,
      ResponseType : ItemResponseBase<ResponseItemType>
{
    
    enum CodingKeys: String, CodingKey {
        case Response
    }
    
    public required init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try? decoder.container(keyedBy: CodingKeys.self)
        if let con = container {
            
            self.Response = try? con.decode(ResponseType.self, forKey: .Response)
        }
    }
    
    /// <summary>
    /// 戻り値データ
    /// </summary>
    public var  Response : ResponseType?
    
}

