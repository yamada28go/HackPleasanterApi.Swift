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


public class AttachmentsType : Codable
{
    /// <summary>
    /// string 添付ファイルのGUID
    /// </summary>
    public var Guid : String?
    
    /// <summary>
    /// 添付ファイル名
    /// </summary>
    public var Name  : String?
    
    /// <summary>
    /// string Content Type
    /// </summary>
    public var ContentType  : String?
    
    /// <summary>
    ///  string ファイルデータをBase64エンコーディングしたもの
    /// </summary>
    public var Base64  : String?
    
    
    // --- --- --- ---
    // JSON変換処理
    
    enum CodingKeys: String, CodingKey {
        
        case Guid
        case Name
        case ContentType
        case Base64
    }
    
    // クライアント側で値が作れるように、
    // nil引数で値を初期化できるように作成する
    public  init() {
    }
    
    public required init(from decoder: Decoder) throws {
        
        if let values = try? decoder.container(keyedBy: CodingKeys.self){
            
            self.Guid = try? values.decode(String.self, forKey: .Guid)
            self.Name = try? values.decode(String.self, forKey: .Name)
            self.ContentType = try? values.decode(String.self, forKey: .ContentType)
            self.Base64 = try? values.decode(String.self, forKey: .Base64)         
            
        }
        
    }
    
    public  func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        if let d = Guid{
            try container.encode(d,forKey: .Guid)
        }
        
        if let d = Name{
            try container.encode(d,forKey: .Name)
        }
        
        if let d = ContentType{
            try container.encode(d,forKey: .ContentType)
        }
        
        if let d = Base64{
            try container.encode(d,forKey: .Base64)
        }
        
    }
    
    
}
