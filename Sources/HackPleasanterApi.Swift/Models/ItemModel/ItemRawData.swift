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

//Foundation
import Foundation

/// <summary>
/// Item形式基本データ構造
/// </summary>
public  class ItemBasicData: RequestBase
{
    /// <summary>
    /// サイトID
    /// </summary>
    public var  SiteId:Int64?
    /// <summary>
    /// 更新日時
    /// </summary>
    public var  UpdatedTime:Date?
    
    /// <summary>
    /// レコード ID 記録テーブルのみ
    /// </summary>
    public var  ResultId : Int64?
    
    /// <summary>
    /// レコード ID 期限付きテーブルのみ
    /// </summary>
    public var  IssueId:Int64?
    
    /// <summary>
    /// バージョン
    /// </summary>
    public var  Ver:Int64?
    
    /// <summary>
    /// タイトル
    /// </summary>
    public var  Title:String?
    
    /// <summary>
    /// 内容
    /// </summary>
    public var Body : String?
    
    /// <summary>
    /// 状況
    /// </summary>
    public var Status : Int64?
    
    /// <summary>
    /// 管理者
    /// </summary>
    public var Manager : Int64?
    
    /// <summary>
    /// 担当者
    /// </summary>
    public var Owner : Int64?
    
    /// <summary>
    /// ロックされているか
    /// </summary>
    public var Locked : Bool?
    
    /// <summary>
    /// コメント
    /// </summary>
    public var Comments : String?
    
    /// <summary>
    /// 作成者
    /// </summary>
    public var Creator : Int64?
    
    /// <summary>
    /// 更新者
    /// </summary>
    public var Updator : Int64?
    
    /// <summary>
    /// 作成日時
    /// </summary>
    public var CreatedTime : Date?
    
    /// <summary>
    /// タイトル(表示用)
    /// </summary>
    public var ItemTitle : String?
    
    // --- --- --- ---
    // JSON変換処理
    
    enum CodingKeys: String, CodingKey {
        case SiteId
        case UpdatedTime
        case ResultId
        case IssueId
        case Ver
        case Title
        case Body 
        case Status 
        case Manager 
        case Owner 
        case Locked 
        case Comments 
        case Creator 
        case Updator 
        case CreatedTime 
        case ItemTitle 
    }
    
    public override func encode(to encoder: Encoder) throws {
        
        try super.encode(to:encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        if let d = SiteId{
            try container.encode(d,forKey: .SiteId)
        }
        
        if let d = UpdatedTime{
            try container.encode(d,forKey: .UpdatedTime)
        }
        
        if let d = ResultId{
            try container.encode(d,forKey: .ResultId)
        }
        
        if let d = IssueId{
            try container.encode(d,forKey: .IssueId)
        }
        
        if let d = Ver{
            try container.encode(d,forKey: .Ver)
        }
        
        if let d = Title{
            try container.encode(d,forKey: .Title)
        }
        
        if let d = Body{
            try container.encode(d,forKey: .Body)
        }
        
        if let d = Status{
            try container.encode(d,forKey: .Status)
        }
        
        if let d = Manager{
            try container.encode(d,forKey: .Manager)
        }
        
        if let d = Owner{
            try container.encode(d,forKey: .Owner)
        }
        
        if let d = Locked{
            try container.encode(d,forKey: .Locked)
        }
        
        if let d = Comments{
            try container.encode(d,forKey: .Comments)
        }
        
        if let d = Creator{
            try container.encode(d,forKey: .Creator)
        }
        
        if let d = Updator{
            try container.encode(d,forKey: .Updator)
        }
        
        if let d = CreatedTime{
            try container.encode(d,forKey: .CreatedTime)
        }
        
        if let d = ItemTitle{
            try container.encode(d,forKey: .ItemTitle)
        }
        
    }
    
}


/// <summary>
/// Item形式基本データ構造
/// </summary>
public  class ItemRawData: ItemBasicData// ,Codable
{
    
    /// <summary>
    /// 分類A～Z
    /// </summary>
    public var ClassHash :ClassHashType?
    /// <summary>
    /// 数値A～Z
    /// </summary>
    public var NumHash :NumHashType?
    
    /// <summary>
    /// 日付A～Z
    /// </summary>
    public var DateHash :DateHashType?
    
    /// <summary>
    /// 説明A～Z
    /// </summary>
    public var DescriptionHash :DescriptionHashType?
    
    /// <summary>
    /// チェックA～Z
    /// </summary>
    public var CheckHash :CheckHashType?
    
    /// <summary>
    /// 添付ファイルA～Z
    /// </summary>
    public var AttachmentsHash :AttachmentsHashType?
    
    
    //--- シリアライズ系統
    
    
    enum CodingKeys: String, CodingKey {
        case ClassHash
        case NumHash
        case DateHash
        case DescriptionHash
        case CheckHash
        case AttachmentsHash
    }
    
    public required init(from decoder: Decoder) throws {
        
        try super.init( from : decoder )
        
        if let values = try? decoder.container(keyedBy: CodingKeys.self){
            
            self.ClassHash = try? values.decode(ClassHashType.self, forKey: .ClassHash)
            self.NumHash = try? values.decode(NumHashType.self, forKey: .NumHash)
            self.DateHash = try? values.decode(DateHashType.self, forKey: .DateHash)
            self.DescriptionHash = try? values.decode(DescriptionHashType.self, forKey: .DescriptionHash)
            self.CheckHash = try? values.decode(CheckHashType.self, forKey: .CheckHash)
            self.AttachmentsHash = try? values.decode(AttachmentsHashType.self, forKey: .AttachmentsHash)
            
        }
        
    }
    
    public override init() {
        super.init()
    }
    
    public override func encode(to encoder: Encoder) throws {
        
        try super.encode(to:encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        if let d = CheckHash{
            try container.encode(d,forKey: .CheckHash)
        }
        
        if let d = NumHash{
            try container.encode(d,forKey: .NumHash)
        }
        
        if let d = DescriptionHash{
            try container.encode(d,forKey: .DescriptionHash)
        }
        
        if let d = CheckHash{
            try container.encode(d,forKey: .CheckHash)
        }
        
        if let d = AttachmentsHash{
            try container.encode(d,forKey: .AttachmentsHash)
        }
    }
}
