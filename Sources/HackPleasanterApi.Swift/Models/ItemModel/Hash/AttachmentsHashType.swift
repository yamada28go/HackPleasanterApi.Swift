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


public class AttachmentsHashType : Codable
{
    
    public var AttachmentsA :[AttachmentsType]?
    public var AttachmentsB :[AttachmentsType]?
    public var AttachmentsC :[AttachmentsType]?
    public var AttachmentsD :[AttachmentsType]?
    public var AttachmentsE :[AttachmentsType]?
    public var AttachmentsF :[AttachmentsType]?
    public var AttachmentsG :[AttachmentsType]?
    public var AttachmentsH :[AttachmentsType]?
    public var AttachmentsI :[AttachmentsType]?
    public var AttachmentsJ :[AttachmentsType]?
    public var AttachmentsK :[AttachmentsType]?
    public var AttachmentsL :[AttachmentsType]?
    public var AttachmentsM :[AttachmentsType]?
    public var AttachmentsN :[AttachmentsType]?
    public var AttachmentsO :[AttachmentsType]?
    public var AttachmentsP :[AttachmentsType]?
    public var AttachmentsQ :[AttachmentsType]?
    public var AttachmentsR :[AttachmentsType]?
    public var AttachmentsS :[AttachmentsType]?
    public var AttachmentsT :[AttachmentsType]?
    public var AttachmentsU :[AttachmentsType]?
    public var AttachmentsV :[AttachmentsType]?
    public var AttachmentsW :[AttachmentsType]?
    public var AttachmentsX :[AttachmentsType]?
    public var AttachmentsY :[AttachmentsType]?
    public var AttachmentsZ :[AttachmentsType]?
    
    
    // --- --- --- ---
    // JSON変換処理
    
    enum CodingKeys: String, CodingKey {
        case AttachmentsA
        case AttachmentsB
        case AttachmentsC
        case AttachmentsD
        case AttachmentsE
        case AttachmentsF
        case AttachmentsG
        case AttachmentsH
        case AttachmentsI
        case AttachmentsJ
        case AttachmentsK
        case AttachmentsL
        case AttachmentsM
        case AttachmentsN
        case AttachmentsO
        case AttachmentsP
        case AttachmentsQ
        case AttachmentsR
        case AttachmentsS
        case AttachmentsT
        case AttachmentsU
        case AttachmentsV
        case AttachmentsW
        case AttachmentsX
        case AttachmentsY
        case AttachmentsZ
    }
    
    // クライアント側で値が作れるように、
    // nil引数で値を初期化できるように作成する
    public  init() {
    }
    
    public required init(from decoder: Decoder) throws {
        
        if let values = try? decoder.container(keyedBy: CodingKeys.self){
            
            self.AttachmentsA = try? values.decode([AttachmentsType].self, forKey: .AttachmentsA)
            self.AttachmentsB = try? values.decode([AttachmentsType].self, forKey: .AttachmentsB)
            self.AttachmentsC = try? values.decode([AttachmentsType].self, forKey: .AttachmentsC)
            self.AttachmentsD = try? values.decode([AttachmentsType].self, forKey: .AttachmentsD)
            self.AttachmentsE = try? values.decode([AttachmentsType].self, forKey: .AttachmentsE)
            self.AttachmentsF = try? values.decode([AttachmentsType].self, forKey: .AttachmentsF)
            self.AttachmentsG = try? values.decode([AttachmentsType].self, forKey: .AttachmentsG)
            self.AttachmentsH = try? values.decode([AttachmentsType].self, forKey: .AttachmentsH)
            self.AttachmentsI = try? values.decode([AttachmentsType].self, forKey: .AttachmentsI)
            self.AttachmentsJ = try? values.decode([AttachmentsType].self, forKey: .AttachmentsJ)
            self.AttachmentsK = try? values.decode([AttachmentsType].self, forKey: .AttachmentsK)
            self.AttachmentsL = try? values.decode([AttachmentsType].self, forKey: .AttachmentsL)
            self.AttachmentsM = try? values.decode([AttachmentsType].self, forKey: .AttachmentsM)
            self.AttachmentsN = try? values.decode([AttachmentsType].self, forKey: .AttachmentsN)
            self.AttachmentsO = try? values.decode([AttachmentsType].self, forKey: .AttachmentsO)
            self.AttachmentsP = try? values.decode([AttachmentsType].self, forKey: .AttachmentsP)
            self.AttachmentsQ = try? values.decode([AttachmentsType].self, forKey: .AttachmentsQ)
            self.AttachmentsR = try? values.decode([AttachmentsType].self, forKey: .AttachmentsR)
            self.AttachmentsS = try? values.decode([AttachmentsType].self, forKey: .AttachmentsS)
            self.AttachmentsT = try? values.decode([AttachmentsType].self, forKey: .AttachmentsT)
            self.AttachmentsU = try? values.decode([AttachmentsType].self, forKey: .AttachmentsU)
            self.AttachmentsV = try? values.decode([AttachmentsType].self, forKey: .AttachmentsV)
            self.AttachmentsW = try? values.decode([AttachmentsType].self, forKey: .AttachmentsW)
            self.AttachmentsX = try? values.decode([AttachmentsType].self, forKey: .AttachmentsX)
            self.AttachmentsY = try? values.decode([AttachmentsType].self, forKey: .AttachmentsY)
            self.AttachmentsZ = try? values.decode([AttachmentsType].self, forKey: .AttachmentsZ)
            
        }
        
    }
    
    public  func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        if let d = AttachmentsA{
            try container.encode(d,forKey: .AttachmentsA)
        }
        
        if let d = AttachmentsB{
            try container.encode(d,forKey: .AttachmentsB)
        }
        
        if let d = AttachmentsC{
            try container.encode(d,forKey: .AttachmentsC)
        }
        
        if let d = AttachmentsD{
            try container.encode(d,forKey: .AttachmentsD)
        }
        
        if let d = AttachmentsE{
            try container.encode(d,forKey: .AttachmentsE)
        }
        
        if let d = AttachmentsF{
            try container.encode(d,forKey: .AttachmentsF)
        }
        
        if let d = AttachmentsG{
            try container.encode(d,forKey: .AttachmentsG)
        }
        
        if let d = AttachmentsH{
            try container.encode(d,forKey: .AttachmentsH)
        }
        
        if let d = AttachmentsI{
            try container.encode(d,forKey: .AttachmentsI)
        }
        
        if let d = AttachmentsJ{
            try container.encode(d,forKey: .AttachmentsJ)
        }
        
        if let d = AttachmentsK{
            try container.encode(d,forKey: .AttachmentsK)
        }
        
        if let d = AttachmentsL{
            try container.encode(d,forKey: .AttachmentsL)
        }
        
        if let d = AttachmentsM{
            try container.encode(d,forKey: .AttachmentsM)
        }
        
        if let d = AttachmentsN{
            try container.encode(d,forKey: .AttachmentsN)
        }
        
        if let d = AttachmentsO{
            try container.encode(d,forKey: .AttachmentsO)
        }
        
        if let d = AttachmentsP{
            try container.encode(d,forKey: .AttachmentsP)
        }
        
        if let d = AttachmentsQ{
            try container.encode(d,forKey: .AttachmentsQ)
        }
        
        if let d = AttachmentsR{
            try container.encode(d,forKey: .AttachmentsR)
        }
        
        if let d = AttachmentsS{
            try container.encode(d,forKey: .AttachmentsS)
        }
        
        if let d = AttachmentsT{
            try container.encode(d,forKey: .AttachmentsT)
        }
        
        if let d = AttachmentsU{
            try container.encode(d,forKey: .AttachmentsU)
        }
        
        if let d = AttachmentsV{
            try container.encode(d,forKey: .AttachmentsV)
        }
        
        if let d = AttachmentsW{
            try container.encode(d,forKey: .AttachmentsW)
        }
        
        if let d = AttachmentsX{
            try container.encode(d,forKey: .AttachmentsX)
        }
        
        if let d = AttachmentsY{
            try container.encode(d,forKey: .AttachmentsY)
        }
        
        if let d = AttachmentsZ{
            try container.encode(d,forKey: .AttachmentsZ)
        }
    }
    
    
    
}

