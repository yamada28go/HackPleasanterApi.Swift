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


// --- 取得要素ソート関係
// 列のそーと種別
public enum ColumnSorterType : String {
    case Asc = "asc"
    case Desc = "desc"
}

// カラム列のソート用キー種別
open class ColumnSorterKey{
    
    // 識別文字列
    let DescriptionName : String
    
    // 対象ソート種別
    let ColumnSorterType : ColumnSorterType
    
    public init(
        // 識別文字列
        DescriptionName : String,
        // 対象ソート種別
        ColumnSorterType : ColumnSorterType
    ){
        self.DescriptionName = DescriptionName
        self.ColumnSorterType = ColumnSorterType
    }
    
}

// --- 取得要素ソート関係

// String形式の検査キー条件
open class StringFindKey {
    
    // 識別文字列
    let DescriptionName : String
    
    // 検索条件変数
    //    public var SearchConditions : [String] = [String]()
    
    // 検索条件
    public var SearchCondition : String?
    
    public init(DescriptionName : String){
        self.DescriptionName = DescriptionName
    }
    
    // 検索対象配列とマージする
    public func Merge( hash :  inout [String : String] ){
        
        // 現状複数条件に対応できていないので、
        // 1条件のアリ/ナシで判定を行うようにする
        if let s = SearchCondition {
            hash[DescriptionName] =  s
        }
        
        /*
         if  0 == SearchConditions.count  {
         // データが無いので何もしない
         return;
         }
         // 存在するデータを詰める
         if 0 != SearchConditions.count{
         // 現状、複数文字列は指定できないので、
         // 要素の先頭を指定して検索させる
         hash[DescriptionName] =  SearchConditions[0]
         }
         */
    }
    
}

// 数値型形式の検査キー条件
open class NumberFindKey {
    
    // 識別文字列
    let DescriptionName : String
    
    // 検索条件変数
    public var SearchConditions : [Decimal] = [Decimal]()
    
    public init(
        DescriptionName : String){
        self.DescriptionName = DescriptionName
    }
    
    // 検索対象配列とマージする
    public func Merge( hash :  inout [String : String] ){
        
        if  0 == SearchConditions.count  {
            // データが無いので何もしない
            return;
        }
        // 存在するデータを詰める
        if 0 != SearchConditions.count{
            
            // 表示形式は以下形式で行う。
            // 形式例
            // NumX : [数値]
            
            let x = SearchConditions.map( {
                NSDecimalNumber(decimal: $0).stringValue
            } )
            .reduce("["){(num1: String, num2: String) -> String in
                
                var r = num1
                r.append(num2)
                r.append(",")
                return r
                
            }
            
            var xx  = String( x.dropLast() )
            xx.append("]")
            
            hash[DescriptionName] =  xx
        }
    }
}

// Bool型形式の検査キー条件
open class BoolFindKey {
    
    // 識別文字列
    private let DescriptionName : String
    
    // 検索条件
    public var SearchCondition : Bool
    
    public init(
        DescriptionName : String){
        self.DescriptionName = DescriptionName
        SearchCondition = false
    }
    
    // 検索対象配列とマージする
    public func Merge( hash :  inout [String : String] ){
        
        if( true == SearchCondition ){
            hash[DescriptionName] =  String(SearchCondition)
        }
    }
    
}

// 検索各要素が保持するべき型特性
public protocol DateFindKeyElementProtocol {
    
    func ToJsonString() -> String
}


// Date型形式の検査キー条件
open class DateFindKey {
    
    // 日付のみの場合
    public class DateKey : DateFindKeyElementProtocol{
        
        // 検索条件キー
        public var SearchCondition : Date
        
        // 日付条件のみが検索対象か判定する
        public var IsDateOnly : Bool
        
        public init(
            // 検索条件キー
            SearchCondition : Date,
            
            // 日付条件のみが検索対象か判定する
            IsDateOnly : Bool
        ){
            self.SearchCondition = SearchCondition
            self.IsDateOnly = IsDateOnly
        }
        
        public func ToJsonString() -> String{
            
            let f = DateFormatter()
            if(IsDateOnly){
                f.dateFormat = "yyyy/MM/dd"
            }
            else{
                f.dateFormat = "yyyy/MM/dd hh:mm:ss"
            }
            
            return f.string(from: SearchCondition)
        }
        
    }
    
    // レンジ指定の場合
    public class DateRange : DateFindKeyElementProtocol{
        
        public var Start :DateKey?
        public var End :DateKey?
        
        public func ToJsonString() -> String{
            
            var r = ""
            
            if let s = Start{
                r.append(s.ToJsonString())
            }
            
            r.append(",")
            
            if let e = Start{
                r.append(e.ToJsonString())
            }
            
            return r
        }
        
    }
    
    
    // 識別文字列
    private let DescriptionName : String
    
    // 検索条件
    public var SearchConditions : [DateFindKeyElementProtocol] = []
    
    public init(DescriptionName : String){
        self.DescriptionName = DescriptionName
    }
    
    // 検索対象配列とマージする
    public func Merge( hash :  inout [String : String] ){
        
        let x = SearchConditions.map{
            $0.ToJsonString()
        }
        .reduce("", {
            var r = $0
            r.append("\"")
            r.append($1)
            r.append("\"")
            r.append(",")
            return r
        })
        
        // 配列として指定する必要があるので、前後に文字を入れる
        let xr = "[" + x.dropLast() + "]"
        
        hash[DescriptionName] =  xr
    }
    
}


// 個別の要素を定義するプロトコル
public protocol ColumnFilterHashGenerate{
    
    func ColumnFilterHashGenerate() -> [String:String]
    
}

// 要素検索リクエスト
open class FindItemsRequest : RequestBase{
    
    /*
     インターフェイスに合わせるために実装するが、
     実際は使用しない。
     */
    
    public required init(from decoder: Decoder)
    {
        try! super.init( from : decoder )
        /*
         decoder.container(keyedBy: CodingKeys.View)
         
         self.View = try? decoder.container(keyedBy: CodingKeys.self)
         */
    }
    
    public override init()
    {
        super.init()
        
    }
    
    
    
    public var View :ViewRequest?
    
    
    enum CodingKeys: String, CodingKey {
        case View
    }
    
    
    public override func encode(to encoder: Encoder) throws {
        
        try super.encode(to:encoder)
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        if let d = View{
            
            try container.encode(d, forKey: .View)
        }
        
    }
    
}

///  検索条件を定義するviewオブジェクト
open class ViewRequest : Encodable{
    
    // 未完了
    public var Incomplete : Bool?
    
    // 自分
    public var Owm : Bool?
    
    // 期限が近い
    public var NearCompletionTime : Bool?
    
    // 遅延
    public var Delay : Bool?
    
    // 超過期限
    public var Overdue : Bool?
    
    // 検索
    public var Search : String?
    
    public init(){
        
    }
    
    //--- シリアライズ系統
    
    
    enum CodingKeys: String, CodingKey {
        case Incomplete
        case Owm
        case NearCompletionTime
        case Delay
        case Overdue
        case Search
        case ColumnFilterHash
        case ColumnSorterHash
    }
    
    public var  derived : ColumnFilterHashGenerate?
    
    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        
        if let d = Incomplete{
            
            try container.encode(d, forKey: .Incomplete)
        }
        
        if let d = Owm{
            try container.encode(d , forKey: .Owm)
        }
        
        if let d = NearCompletionTime{
            try container.encode(d , forKey:  .NearCompletionTime)
        }
        
        if let d = Delay{
            try container.encode(d , forKey: .Delay)
        }
        
        if let d = Overdue{
            try container.encode(d , forKey: .Overdue)
        }
        
        if let d = Search{
            try container.encode(d,forKey: .Search)
        }
        
        // 個別の検索条件をまとめて設定していく
        if let e  = derived{
            
            let a = e.ColumnFilterHashGenerate()
            try container.encode(a ,forKey: .ColumnFilterHash)
            
        }
        
        //ソード順序は個別に指定された値を使用する
        let s = ColumnSorter.reduce(into:[String:String]())
            { $0[$1.DescriptionName] = $1.ColumnSorterType.rawValue}
        
        try container.encode(s ,forKey: .ColumnSorterHash)
        
    }
    
    // カラムソート用の基本キー配列
    // ソート指定時はこの部分のキーを指定する
    public var ColumnSorter : [ColumnSorterKey] = [ColumnSorterKey]()
    
}


