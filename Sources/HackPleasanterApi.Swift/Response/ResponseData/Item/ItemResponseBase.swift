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
/// 要素取得結果ベース
/// </summary>
public class ItemResponseBase<ItemType : PleasanterItem> : Codable
{
    //---
    // APIとしての戻り値型
    
    // 戻り値データ型(APIとして取得さとれる値)
    public var  Data : [ItemRawData]?
    
    enum CodingKeys: String, CodingKey {
        case Data
    }
    
    public required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        Data = try? values.decode([ItemRawData].self, forKey: .Data)
    }
    
    public  init()  {
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        if let data = Data{
            for d in data {
                try container.encode(d)
            }
        }
    }
    
    //---
    // ラッパー上でユーザーが操作する値
    
    // ユーザーが操作する値と同期させる
    public func SetupDataItems(){
        
        if let items = self.Data{
            self.DataItems = items.map( {ItemType( rawItem: $0)} )
        }
        
    }
    
    // 外部からアクセスするデータ型
    public var  DataItems : [ItemType]?
    
    // ラッパー上でユーザーが操作する値
    
    
}
