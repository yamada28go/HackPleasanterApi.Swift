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
/// チェックA～Z
/// </summary>
public class CheckHashType : Codable
{
    public var CheckA  : Bool?
    public var CheckB  : Bool?
    public var CheckC  : Bool?
    public var CheckD  : Bool?
    public var CheckE  : Bool?
    public var CheckF  : Bool?
    public var CheckG  : Bool?
    public var CheckH  : Bool?
    public var CheckI  : Bool?
    public var CheckJ  : Bool?
    public var CheckK  : Bool?
    public var CheckL  : Bool?
    public var CheckM  : Bool?
    public var CheckN  : Bool?
    public var CheckO  : Bool?
    public var CheckP  : Bool?
    public var CheckQ  : Bool?
    public var CheckR  : Bool?
    public var CheckS  : Bool?
    public var CheckT  : Bool?
    public var CheckU  : Bool?
    public var CheckV  : Bool?
    public var CheckW  : Bool?
    public var CheckX  : Bool?
    public var CheckY  : Bool?
    public var CheckZ  : Bool?
    
    // --- --- --- ---
    // JSON変換処理
    
    enum CodingKeys: String, CodingKey {
        case CheckA
        case CheckB
        case CheckC
        case CheckD
        case CheckE
        case CheckF
        case CheckG
        case CheckH
        case CheckI
        case CheckJ
        case CheckK
        case CheckL
        case CheckM
        case CheckN
        case CheckO
        case CheckP
        case CheckQ
        case CheckR
        case CheckS
        case CheckT
        case CheckU
        case CheckV
        case CheckW
        case CheckX
        case CheckY
        case CheckZ
    }
    
    // クライアント側で値が作れるように、
    // nil引数で値を初期化できるように作成する
    public  init() {
    }
    
    public required init(from decoder: Decoder) throws {
        
        if let values = try? decoder.container(keyedBy: CodingKeys.self){
            
            self.CheckA = try? values.decode(Bool.self, forKey: .CheckA)
            self.CheckB = try? values.decode(Bool.self, forKey: .CheckB)
            self.CheckC = try? values.decode(Bool.self, forKey: .CheckC)
            self.CheckD = try? values.decode(Bool.self, forKey: .CheckD)
            self.CheckE = try? values.decode(Bool.self, forKey: .CheckE)
            self.CheckF = try? values.decode(Bool.self, forKey: .CheckF)
            self.CheckG = try? values.decode(Bool.self, forKey: .CheckG)
            self.CheckH = try? values.decode(Bool.self, forKey: .CheckH)
            self.CheckI = try? values.decode(Bool.self, forKey: .CheckI)
            self.CheckJ = try? values.decode(Bool.self, forKey: .CheckJ)
            self.CheckK = try? values.decode(Bool.self, forKey: .CheckK)
            self.CheckL = try? values.decode(Bool.self, forKey: .CheckL)
            self.CheckM = try? values.decode(Bool.self, forKey: .CheckM)
            self.CheckN = try? values.decode(Bool.self, forKey: .CheckN)
            self.CheckO = try? values.decode(Bool.self, forKey: .CheckO)
            self.CheckP = try? values.decode(Bool.self, forKey: .CheckP)
            self.CheckQ = try? values.decode(Bool.self, forKey: .CheckQ)
            self.CheckR = try? values.decode(Bool.self, forKey: .CheckR)
            self.CheckS = try? values.decode(Bool.self, forKey: .CheckS)
            self.CheckT = try? values.decode(Bool.self, forKey: .CheckT)
            self.CheckU = try? values.decode(Bool.self, forKey: .CheckU)
            self.CheckV = try? values.decode(Bool.self, forKey: .CheckV)
            self.CheckW = try? values.decode(Bool.self, forKey: .CheckW)
            self.CheckX = try? values.decode(Bool.self, forKey: .CheckX)
            self.CheckY = try? values.decode(Bool.self, forKey: .CheckY)
            self.CheckZ = try? values.decode(Bool.self, forKey: .CheckZ)
            
        }
        
    }
    
    public  func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        if let d = CheckA{
            try container.encode(d,forKey: .CheckA)
        }
        
        if let d = CheckB{
            try container.encode(d,forKey: .CheckB)
        }
        
        if let d = CheckC{
            try container.encode(d,forKey: .CheckC)
        }
        
        if let d = CheckD{
            try container.encode(d,forKey: .CheckD)
        }
        
        if let d = CheckE{
            try container.encode(d,forKey: .CheckE)
        }
        
        if let d = CheckF{
            try container.encode(d,forKey: .CheckF)
        }
        
        if let d = CheckG{
            try container.encode(d,forKey: .CheckG)
        }
        
        if let d = CheckH{
            try container.encode(d,forKey: .CheckH)
        }
        
        if let d = CheckI{
            try container.encode(d,forKey: .CheckI)
        }
        
        if let d = CheckJ{
            try container.encode(d,forKey: .CheckJ)
        }
        
        if let d = CheckK{
            try container.encode(d,forKey: .CheckK)
        }
        
        if let d = CheckL{
            try container.encode(d,forKey: .CheckL)
        }
        
        if let d = CheckM{
            try container.encode(d,forKey: .CheckM)
        }
        
        if let d = CheckN{
            try container.encode(d,forKey: .CheckN)
        }
        
        if let d = CheckO{
            try container.encode(d,forKey: .CheckO)
        }
        
        if let d = CheckP{
            try container.encode(d,forKey: .CheckP)
        }
        
        if let d = CheckQ{
            try container.encode(d,forKey: .CheckQ)
        }
        
        if let d = CheckR{
            try container.encode(d,forKey: .CheckR)
        }
        
        if let d = CheckS{
            try container.encode(d,forKey: .CheckS)
        }
        
        if let d = CheckT{
            try container.encode(d,forKey: .CheckT)
        }
        
        if let d = CheckU{
            try container.encode(d,forKey: .CheckU)
        }
        
        if let d = CheckV{
            try container.encode(d,forKey: .CheckV)
        }
        
        if let d = CheckW{
            try container.encode(d,forKey: .CheckW)
        }
        
        if let d = CheckX{
            try container.encode(d,forKey: .CheckX)
        }
        
        if let d = CheckY{
            try container.encode(d,forKey: .CheckY)
        }
        
        if let d = CheckZ{
            try container.encode(d,forKey: .CheckZ)
        }
    }
    
    
}

