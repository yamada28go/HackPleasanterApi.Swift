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
/// 分類A～Z
/// </summary>
public class ClassHashType : Codable
{
    public var ClassA :String?
    public var ClassB :String?
    public var ClassC :String?
    public var ClassD :String?
    public var ClassE :String?
    public var ClassF :String?
    public var ClassG :String?
    public var ClassH :String?
    public var ClassI :String?
    public var ClassJ :String?
    public var ClassK :String?
    public var ClassL :String?
    public var ClassM :String?
    public var ClassN :String?
    public var ClassO :String?
    public var ClassP :String?
    public var ClassQ :String?
    public var ClassR :String?
    public var ClassS :String?
    public var ClassT :String?
    public var ClassU :String?
    public var ClassV :String?
    public var ClassW :String?
    public var ClassX :String?
    public var ClassY :String?
    public var ClassZ :String?
    
    // --- --- --- ---
    // JSON変換処理
    
    enum CodingKeys: String, CodingKey {
        case ClassA
        case ClassB
        case ClassC
        case ClassD
        case ClassE
        case ClassF
        case ClassG
        case ClassH
        case ClassI
        case ClassJ
        case ClassK
        case ClassL
        case ClassM
        case ClassN
        case ClassO
        case ClassP
        case ClassQ
        case ClassR
        case ClassS
        case ClassT
        case ClassU
        case ClassV
        case ClassW
        case ClassX
        case ClassY
        case ClassZ
    }
    
    // クライアント側で値が作れるように、
    // nil引数で値を初期化できるように作成する
    public  init() {
    }
    
    public required init(from decoder: Decoder) throws {
        
        if let values = try? decoder.container(keyedBy: CodingKeys.self){
            
            self.ClassA = try? values.decode(String.self, forKey: .ClassA)
            self.ClassB = try? values.decode(String.self, forKey: .ClassB)
            self.ClassC = try? values.decode(String.self, forKey: .ClassC)
            self.ClassD = try? values.decode(String.self, forKey: .ClassD)
            self.ClassE = try? values.decode(String.self, forKey: .ClassE)
            self.ClassF = try? values.decode(String.self, forKey: .ClassF)
            self.ClassG = try? values.decode(String.self, forKey: .ClassG)
            self.ClassH = try? values.decode(String.self, forKey: .ClassH)
            self.ClassI = try? values.decode(String.self, forKey: .ClassI)
            self.ClassJ = try? values.decode(String.self, forKey: .ClassJ)
            self.ClassK = try? values.decode(String.self, forKey: .ClassK)
            self.ClassL = try? values.decode(String.self, forKey: .ClassL)
            self.ClassM = try? values.decode(String.self, forKey: .ClassM)
            self.ClassN = try? values.decode(String.self, forKey: .ClassN)
            self.ClassO = try? values.decode(String.self, forKey: .ClassO)
            self.ClassP = try? values.decode(String.self, forKey: .ClassP)
            self.ClassQ = try? values.decode(String.self, forKey: .ClassQ)
            self.ClassR = try? values.decode(String.self, forKey: .ClassR)
            self.ClassS = try? values.decode(String.self, forKey: .ClassS)
            self.ClassT = try? values.decode(String.self, forKey: .ClassT)
            self.ClassU = try? values.decode(String.self, forKey: .ClassU)
            self.ClassV = try? values.decode(String.self, forKey: .ClassV)
            self.ClassW = try? values.decode(String.self, forKey: .ClassW)
            self.ClassX = try? values.decode(String.self, forKey: .ClassX)
            self.ClassY = try? values.decode(String.self, forKey: .ClassY)
            self.ClassZ = try? values.decode(String.self, forKey: .ClassZ)
            
        }
        
    }
    
    public  func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        if let d = ClassA{
            try container.encode(d,forKey: .ClassA)
        }
        
        if let d = ClassB{
            try container.encode(d,forKey: .ClassB)
        }
        
        if let d = ClassC{
            try container.encode(d,forKey: .ClassC)
        }
        
        if let d = ClassD{
            try container.encode(d,forKey: .ClassD)
        }
        
        if let d = ClassE{
            try container.encode(d,forKey: .ClassE)
        }
        
        if let d = ClassF{
            try container.encode(d,forKey: .ClassF)
        }
        
        if let d = ClassG{
            try container.encode(d,forKey: .ClassG)
        }
        
        if let d = ClassH{
            try container.encode(d,forKey: .ClassH)
        }
        
        if let d = ClassI{
            try container.encode(d,forKey: .ClassI)
        }
        
        if let d = ClassJ{
            try container.encode(d,forKey: .ClassJ)
        }
        
        if let d = ClassK{
            try container.encode(d,forKey: .ClassK)
        }
        
        if let d = ClassL{
            try container.encode(d,forKey: .ClassL)
        }
        
        if let d = ClassM{
            try container.encode(d,forKey: .ClassM)
        }
        
        if let d = ClassN{
            try container.encode(d,forKey: .ClassN)
        }
        
        if let d = ClassO{
            try container.encode(d,forKey: .ClassO)
        }
        
        if let d = ClassP{
            try container.encode(d,forKey: .ClassP)
        }
        
        if let d = ClassQ{
            try container.encode(d,forKey: .ClassQ)
        }
        
        if let d = ClassR{
            try container.encode(d,forKey: .ClassR)
        }
        
        if let d = ClassS{
            try container.encode(d,forKey: .ClassS)
        }
        
        if let d = ClassT{
            try container.encode(d,forKey: .ClassT)
        }
        
        if let d = ClassU{
            try container.encode(d,forKey: .ClassU)
        }
        
        if let d = ClassV{
            try container.encode(d,forKey: .ClassV)
        }
        
        if let d = ClassW{
            try container.encode(d,forKey: .ClassW)
        }
        
        if let d = ClassX{
            try container.encode(d,forKey: .ClassX)
        }
        
        if let d = ClassY{
            try container.encode(d,forKey: .ClassY)
        }
        
        if let d = ClassZ{
            try container.encode(d,forKey: .ClassZ)
        }
    }
    
    
}
