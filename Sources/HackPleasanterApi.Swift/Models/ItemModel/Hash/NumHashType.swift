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

/// <summary>
/// 数値A～Z
/// </summary>
public class NumHashType :Codable{
    
    // 公開メンバ定義
    public var NumA : Decimal?
    public var NumB : Decimal?
    public var NumC : Decimal?
    public var NumD : Decimal?
    public var NumE : Decimal?
    public var NumF : Decimal?
    public var NumG : Decimal?
    public var NumH : Decimal?
    public var NumI : Decimal?
    public var NumJ : Decimal?
    public var NumK : Decimal?
    public var NumL : Decimal?
    public var NumM : Decimal?
    public var NumN : Decimal?
    public var NumO : Decimal?
    public var NumP : Decimal?
    public var NumQ : Decimal?
    public var NumR : Decimal?
    public var NumS : Decimal?
    public var NumT : Decimal?
    public var NumU : Decimal?
    public var NumV : Decimal?
    public var NumW : Decimal?
    public var NumX : Decimal?
    public var NumY : Decimal?
    public var NumZ : Decimal?
    
    // --- --- --- ---
    // JSON変換処理
    
    enum CodingKeys: String, CodingKey {
        case NumA
        case NumB
        case NumC
        case NumD
        case NumE
        case NumF
        case NumG
        case NumH
        case NumI
        case NumJ
        case NumK
        case NumL
        case NumM
        case NumN
        case NumO
        case NumP
        case NumQ
        case NumR
        case NumS
        case NumT
        case NumU
        case NumV
        case NumW
        case NumX
        case NumY
        case NumZ
    }
    
    // クライアント側で値が作れるように、
    // nil引数で値を初期化できるように作成する
    public  init() {
    }
    
    public required init(from decoder: Decoder) throws {
        
        if let values = try? decoder.container(keyedBy: CodingKeys.self){
            
            self.NumA = try? values.decode(Decimal.self, forKey: .NumA)
            self.NumB = try? values.decode(Decimal.self, forKey: .NumB)
            self.NumC = try? values.decode(Decimal.self, forKey: .NumC)
            self.NumD = try? values.decode(Decimal.self, forKey: .NumD)
            self.NumE = try? values.decode(Decimal.self, forKey: .NumE)
            self.NumF = try? values.decode(Decimal.self, forKey: .NumF)
            self.NumG = try? values.decode(Decimal.self, forKey: .NumG)
            self.NumH = try? values.decode(Decimal.self, forKey: .NumH)
            self.NumI = try? values.decode(Decimal.self, forKey: .NumI)
            self.NumJ = try? values.decode(Decimal.self, forKey: .NumJ)
            self.NumK = try? values.decode(Decimal.self, forKey: .NumK)
            self.NumL = try? values.decode(Decimal.self, forKey: .NumL)
            self.NumM = try? values.decode(Decimal.self, forKey: .NumM)
            self.NumN = try? values.decode(Decimal.self, forKey: .NumN)
            self.NumO = try? values.decode(Decimal.self, forKey: .NumO)
            self.NumP = try? values.decode(Decimal.self, forKey: .NumP)
            self.NumQ = try? values.decode(Decimal.self, forKey: .NumQ)
            self.NumR = try? values.decode(Decimal.self, forKey: .NumR)
            self.NumS = try? values.decode(Decimal.self, forKey: .NumS)
            self.NumT = try? values.decode(Decimal.self, forKey: .NumT)
            self.NumU = try? values.decode(Decimal.self, forKey: .NumU)
            self.NumV = try? values.decode(Decimal.self, forKey: .NumV)
            self.NumW = try? values.decode(Decimal.self, forKey: .NumW)
            self.NumX = try? values.decode(Decimal.self, forKey: .NumX)
            self.NumY = try? values.decode(Decimal.self, forKey: .NumY)
            self.NumZ = try? values.decode(Decimal.self, forKey: .NumZ)
            
        }
        
    }
    
    public  func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        if let d = NumA{
            try container.encode(d,forKey: .NumA)
        }
        
        if let d = NumB{
            try container.encode(d,forKey: .NumB)
        }
        
        if let d = NumC{
            try container.encode(d,forKey: .NumC)
        }
        
        if let d = NumD{
            try container.encode(d,forKey: .NumD)
        }
        
        if let d = NumE{
            try container.encode(d,forKey: .NumE)
        }
        
        if let d = NumF{
            try container.encode(d,forKey: .NumF)
        }
        
        if let d = NumG{
            try container.encode(d,forKey: .NumG)
        }
        
        if let d = NumH{
            try container.encode(d,forKey: .NumH)
        }
        
        if let d = NumI{
            try container.encode(d,forKey: .NumI)
        }
        
        if let d = NumJ{
            try container.encode(d,forKey: .NumJ)
        }
        
        if let d = NumK{
            try container.encode(d,forKey: .NumK)
        }
        
        if let d = NumL{
            try container.encode(d,forKey: .NumL)
        }
        
        if let d = NumM{
            try container.encode(d,forKey: .NumM)
        }
        
        if let d = NumN{
            try container.encode(d,forKey: .NumN)
        }
        
        if let d = NumO{
            try container.encode(d,forKey: .NumO)
        }
        
        if let d = NumP{
            try container.encode(d,forKey: .NumP)
        }
        
        if let d = NumQ{
            try container.encode(d,forKey: .NumQ)
        }
        
        if let d = NumR{
            try container.encode(d,forKey: .NumR)
        }
        
        if let d = NumS{
            try container.encode(d,forKey: .NumS)
        }
        
        if let d = NumT{
            try container.encode(d,forKey: .NumT)
        }
        
        if let d = NumU{
            try container.encode(d,forKey: .NumU)
        }
        
        if let d = NumV{
            try container.encode(d,forKey: .NumV)
        }
        
        if let d = NumW{
            try container.encode(d,forKey: .NumW)
        }
        
        if let d = NumX{
            try container.encode(d,forKey: .NumX)
        }
        
        if let d = NumY{
            try container.encode(d,forKey: .NumY)
        }
        
        if let d = NumZ{
            try container.encode(d,forKey: .NumZ)
        }
    }
    
}
