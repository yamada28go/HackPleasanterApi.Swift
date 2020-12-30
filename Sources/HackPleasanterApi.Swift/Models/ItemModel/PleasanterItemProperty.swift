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

// プリザンターのitem形式(アプリ内部で外部からアクセスするためのラッパとして使用する)
open class PleasanterItem {
    
    /// 基礎item
    /// このオブジェクトの生存期間中は必ずデータとして保持している想定
    unowned let rawItem : ItemRawData
    
    public required init(  rawItem :  ItemRawData ){
        
        self.rawItem = rawItem
        
    }
    
    // 基本要素情報へのアクセス用
    public var BasicData: ItemBasicData {
        get {
            // 公開が必要な一部に限定して情報を返す
            return rawItem as ItemBasicData
        }
    }
    
}

