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
public  class ItemRawData: Codable
{
    /// <summary>
    /// サイトID
    /// </summary>
    var  SiteId:Int64?
    /// <summary>
    /// 更新日時
    /// </summary>
    var  UpdatedTime:Date?
    
    /// <summary>
    /// レコード ID 記録テーブルのみ
    /// </summary>
    var  ResultId : Int64?
    
    /// <summary>
    /// レコード ID 期限付きテーブルのみ
    /// </summary>
    var  IssueId:Int64?
    
    /// <summary>
    /// バージョン
    /// </summary>
    var  Ver:Int64?
    
    /// <summary>
    /// タイトル
    /// </summary>
    var  Title:String?
    
    /// <summary>
    /// 内容
    /// </summary>
    var Body : String?
    
    /// <summary>
    /// 状況
    /// </summary>
    var Status : Int64?
    
    /// <summary>
    /// 管理者
    /// </summary>
    var Manager : Int64?
    
    /// <summary>
    /// 担当者
    /// </summary>
    var Owner : Int64?
    
    /// <summary>
    /// ロックされているか
    /// </summary>
    var Locked : Bool?
    
    /// <summary>
    /// コメント
    /// </summary>
    var Comments : String?
    
    /// <summary>
    /// 作成者
    /// </summary>
    var Creator : Int64?
    
    /// <summary>
    /// 更新者
    /// </summary>
    var Updator : Int64?
    
    /// <summary>
    /// 作成日時
    /// </summary>
    var CreatedTime : Date?
    
    /// <summary>
    /// タイトル(表示用)
    /// </summary>
    var ItemTitle : String?
    
    /// <summary>
    /// APIバージョン
    /// </summary>
    var ApiVersion : Double?
    
    /// <summary>
    /// 分類A～Z
    /// </summary>
    var ClassHash :ClassHash?
    /// <summary>
    /// 数値A～Z
    /// </summary>
    var NumHash :NumHash?;
    
    /// <summary>
    /// 日付A～Z
    /// </summary>
    var DateHash :DateHash?
    
    /// <summary>
    /// 説明A～Z
    /// </summary>
    var DescriptionHash :DescriptionHash?
    
    /// <summary>
    /// チェックA～Z
    /// </summary>
    var CheckHash :CheckHash?
    
    /// <summary>
    /// 添付ファイルA～Z
    /// </summary>
    var AttachmentsHash :AttachmentsHash?
}
