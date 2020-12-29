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
/// 説明A～Z
/// </summary>
public class DescriptionHashType : Codable
{
    public var DescriptionA :String?
    public var DescriptionB :String?
    public var DescriptionC :String?
    public var DescriptionD :String?
    public var DescriptionE :String?
    public var DescriptionF :String?
    public var DescriptionG :String?
    public var DescriptionH :String?
    public var DescriptionI :String?
    public var DescriptionJ :String?
    public var DescriptionK :String?
    public var DescriptionL :String?
    public var DescriptionM :String?
    public var DescriptionN :String?
    public var DescriptionO :String?
    public var DescriptionP :String?
    public var DescriptionQ :String?
    public var DescriptionR :String?
    public var DescriptionS :String?
    public var DescriptionT :String?
    public var DescriptionU :String?
    public var DescriptionV :String?
    public var DescriptionW :String?
    public var DescriptionX :String?
    public var DescriptionY :String?
    public var DescriptionZ :String?
    
    
    // --- --- --- ---
    // JSON変換処理
    
    enum CodingKeys: String, CodingKey {
        case DescriptionA
        case DescriptionB
        case DescriptionC
        case DescriptionD
        case DescriptionE
        case DescriptionF
        case DescriptionG
        case DescriptionH
        case DescriptionI
        case DescriptionJ
        case DescriptionK
        case DescriptionL
        case DescriptionM
        case DescriptionN
        case DescriptionO
        case DescriptionP
        case DescriptionQ
        case DescriptionR
        case DescriptionS
        case DescriptionT
        case DescriptionU
        case DescriptionV
        case DescriptionW
        case DescriptionX
        case DescriptionY
        case DescriptionZ
    }
    
    // クライアント側で値が作れるように、
    // nil引数で値を初期化できるように作成する
    public  init() {
    }
    
    public required init(from decoder: Decoder) throws {
        
        if let values = try? decoder.container(keyedBy: CodingKeys.self){
            
            self.DescriptionA = try? values.decode(String.self, forKey: .DescriptionA)
            self.DescriptionB = try? values.decode(String.self, forKey: .DescriptionB)
            self.DescriptionC = try? values.decode(String.self, forKey: .DescriptionC)
            self.DescriptionD = try? values.decode(String.self, forKey: .DescriptionD)
            self.DescriptionE = try? values.decode(String.self, forKey: .DescriptionE)
            self.DescriptionF = try? values.decode(String.self, forKey: .DescriptionF)
            self.DescriptionG = try? values.decode(String.self, forKey: .DescriptionG)
            self.DescriptionH = try? values.decode(String.self, forKey: .DescriptionH)
            self.DescriptionI = try? values.decode(String.self, forKey: .DescriptionI)
            self.DescriptionJ = try? values.decode(String.self, forKey: .DescriptionJ)
            self.DescriptionK = try? values.decode(String.self, forKey: .DescriptionK)
            self.DescriptionL = try? values.decode(String.self, forKey: .DescriptionL)
            self.DescriptionM = try? values.decode(String.self, forKey: .DescriptionM)
            self.DescriptionN = try? values.decode(String.self, forKey: .DescriptionN)
            self.DescriptionO = try? values.decode(String.self, forKey: .DescriptionO)
            self.DescriptionP = try? values.decode(String.self, forKey: .DescriptionP)
            self.DescriptionQ = try? values.decode(String.self, forKey: .DescriptionQ)
            self.DescriptionR = try? values.decode(String.self, forKey: .DescriptionR)
            self.DescriptionS = try? values.decode(String.self, forKey: .DescriptionS)
            self.DescriptionT = try? values.decode(String.self, forKey: .DescriptionT)
            self.DescriptionU = try? values.decode(String.self, forKey: .DescriptionU)
            self.DescriptionV = try? values.decode(String.self, forKey: .DescriptionV)
            self.DescriptionW = try? values.decode(String.self, forKey: .DescriptionW)
            self.DescriptionX = try? values.decode(String.self, forKey: .DescriptionX)
            self.DescriptionY = try? values.decode(String.self, forKey: .DescriptionY)
            self.DescriptionZ = try? values.decode(String.self, forKey: .DescriptionZ)
            
        }
        
    }
    
    public  func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        if let d = DescriptionA{
            try container.encode(d,forKey: .DescriptionA)
        }
        
        if let d = DescriptionB{
            try container.encode(d,forKey: .DescriptionB)
        }
        
        if let d = DescriptionC{
            try container.encode(d,forKey: .DescriptionC)
        }
        
        if let d = DescriptionD{
            try container.encode(d,forKey: .DescriptionD)
        }
        
        if let d = DescriptionE{
            try container.encode(d,forKey: .DescriptionE)
        }
        
        if let d = DescriptionF{
            try container.encode(d,forKey: .DescriptionF)
        }
        
        if let d = DescriptionG{
            try container.encode(d,forKey: .DescriptionG)
        }
        
        if let d = DescriptionH{
            try container.encode(d,forKey: .DescriptionH)
        }
        
        if let d = DescriptionI{
            try container.encode(d,forKey: .DescriptionI)
        }
        
        if let d = DescriptionJ{
            try container.encode(d,forKey: .DescriptionJ)
        }
        
        if let d = DescriptionK{
            try container.encode(d,forKey: .DescriptionK)
        }
        
        if let d = DescriptionL{
            try container.encode(d,forKey: .DescriptionL)
        }
        
        if let d = DescriptionM{
            try container.encode(d,forKey: .DescriptionM)
        }
        
        if let d = DescriptionN{
            try container.encode(d,forKey: .DescriptionN)
        }
        
        if let d = DescriptionO{
            try container.encode(d,forKey: .DescriptionO)
        }
        
        if let d = DescriptionP{
            try container.encode(d,forKey: .DescriptionP)
        }
        
        if let d = DescriptionQ{
            try container.encode(d,forKey: .DescriptionQ)
        }
        
        if let d = DescriptionR{
            try container.encode(d,forKey: .DescriptionR)
        }
        
        if let d = DescriptionS{
            try container.encode(d,forKey: .DescriptionS)
        }
        
        if let d = DescriptionT{
            try container.encode(d,forKey: .DescriptionT)
        }
        
        if let d = DescriptionU{
            try container.encode(d,forKey: .DescriptionU)
        }
        
        if let d = DescriptionV{
            try container.encode(d,forKey: .DescriptionV)
        }
        
        if let d = DescriptionW{
            try container.encode(d,forKey: .DescriptionW)
        }
        
        if let d = DescriptionX{
            try container.encode(d,forKey: .DescriptionX)
        }
        
        if let d = DescriptionY{
            try container.encode(d,forKey: .DescriptionY)
        }
        
        if let d = DescriptionZ{
            try container.encode(d,forKey: .DescriptionZ)
        }
    }
}
