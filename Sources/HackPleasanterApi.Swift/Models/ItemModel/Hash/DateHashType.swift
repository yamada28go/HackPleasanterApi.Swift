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
/// 分類
/// </summary>
public class DateHashType: Codable
{
    public var DateA : Date?
    public var DateB : Date?
    public var DateC : Date?
    public var DateD : Date?
    public var DateE : Date?
    public var DateF : Date?
    public var DateG : Date?
    public var DateH : Date?
    public var DateI : Date?
    public var DateJ : Date?
    public var DateK : Date?
    public var DateL : Date?
    public var DateM : Date?
    public var DateN : Date?
    public var DateO : Date?
    public var DateP : Date?
    public var DateQ : Date?
    public var DateR : Date?
    public var DateS : Date?
    public var DateT : Date?
    public var DateU : Date?
    public var DateV : Date?
    public var DateW : Date?
    public var DateX : Date?
    public var DateY : Date?
    public var DateZ : Date?
    
    // --- --- --- ---
    // JSON変換処理
    
    enum CodingKeys: String, CodingKey {
        case DateA
        case DateB
        case DateC
        case DateD
        case DateE
        case DateF
        case DateG
        case DateH
        case DateI
        case DateJ
        case DateK
        case DateL
        case DateM
        case DateN
        case DateO
        case DateP
        case DateQ
        case DateR
        case DateS
        case DateT
        case DateU
        case DateV
        case DateW
        case DateX
        case DateY
        case DateZ
    }
    
    // クライアント側で値が作れるように、
    // nil引数で値を初期化できるように作成する
    public  init() {
    }
    
    public required init(from decoder: Decoder) throws {
        
        if let values = try? decoder.container(keyedBy: CodingKeys.self){
            
            self.DateA = try? values.decode(Date.self, forKey: .DateA)
            self.DateB = try? values.decode(Date.self, forKey: .DateB)
            self.DateC = try? values.decode(Date.self, forKey: .DateC)
            self.DateD = try? values.decode(Date.self, forKey: .DateD)
            self.DateE = try? values.decode(Date.self, forKey: .DateE)
            self.DateF = try? values.decode(Date.self, forKey: .DateF)
            self.DateG = try? values.decode(Date.self, forKey: .DateG)
            self.DateH = try? values.decode(Date.self, forKey: .DateH)
            self.DateI = try? values.decode(Date.self, forKey: .DateI)
            self.DateJ = try? values.decode(Date.self, forKey: .DateJ)
            self.DateK = try? values.decode(Date.self, forKey: .DateK)
            self.DateL = try? values.decode(Date.self, forKey: .DateL)
            self.DateM = try? values.decode(Date.self, forKey: .DateM)
            self.DateN = try? values.decode(Date.self, forKey: .DateN)
            self.DateO = try? values.decode(Date.self, forKey: .DateO)
            self.DateP = try? values.decode(Date.self, forKey: .DateP)
            self.DateQ = try? values.decode(Date.self, forKey: .DateQ)
            self.DateR = try? values.decode(Date.self, forKey: .DateR)
            self.DateS = try? values.decode(Date.self, forKey: .DateS)
            self.DateT = try? values.decode(Date.self, forKey: .DateT)
            self.DateU = try? values.decode(Date.self, forKey: .DateU)
            self.DateV = try? values.decode(Date.self, forKey: .DateV)
            self.DateW = try? values.decode(Date.self, forKey: .DateW)
            self.DateX = try? values.decode(Date.self, forKey: .DateX)
            self.DateY = try? values.decode(Date.self, forKey: .DateY)
            self.DateZ = try? values.decode(Date.self, forKey: .DateZ)
            
        }
        
    }
    
    public  func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        if let d = DateA{
            try container.encode(d,forKey: .DateA)
        }
        
        if let d = DateB{
            try container.encode(d,forKey: .DateB)
        }
        
        if let d = DateC{
            try container.encode(d,forKey: .DateC)
        }
        
        if let d = DateD{
            try container.encode(d,forKey: .DateD)
        }
        
        if let d = DateE{
            try container.encode(d,forKey: .DateE)
        }
        
        if let d = DateF{
            try container.encode(d,forKey: .DateF)
        }
        
        if let d = DateG{
            try container.encode(d,forKey: .DateG)
        }
        
        if let d = DateH{
            try container.encode(d,forKey: .DateH)
        }
        
        if let d = DateI{
            try container.encode(d,forKey: .DateI)
        }
        
        if let d = DateJ{
            try container.encode(d,forKey: .DateJ)
        }
        
        if let d = DateK{
            try container.encode(d,forKey: .DateK)
        }
        
        if let d = DateL{
            try container.encode(d,forKey: .DateL)
        }
        
        if let d = DateM{
            try container.encode(d,forKey: .DateM)
        }
        
        if let d = DateN{
            try container.encode(d,forKey: .DateN)
        }
        
        if let d = DateO{
            try container.encode(d,forKey: .DateO)
        }
        
        if let d = DateP{
            try container.encode(d,forKey: .DateP)
        }
        
        if let d = DateQ{
            try container.encode(d,forKey: .DateQ)
        }
        
        if let d = DateR{
            try container.encode(d,forKey: .DateR)
        }
        
        if let d = DateS{
            try container.encode(d,forKey: .DateS)
        }
        
        if let d = DateT{
            try container.encode(d,forKey: .DateT)
        }
        
        if let d = DateU{
            try container.encode(d,forKey: .DateU)
        }
        
        if let d = DateV{
            try container.encode(d,forKey: .DateV)
        }
        
        if let d = DateW{
            try container.encode(d,forKey: .DateW)
        }
        
        if let d = DateX{
            try container.encode(d,forKey: .DateX)
        }
        
        if let d = DateY{
            try container.encode(d,forKey: .DateY)
        }
        
        if let d = DateZ{
            try container.encode(d,forKey: .DateZ)
        }
    }
}

