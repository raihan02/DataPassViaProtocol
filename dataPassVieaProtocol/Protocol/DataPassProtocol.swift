//
//  DataPassProtocol.swift
//  dataPassVieaProtocol
//
//  Created by Twnibit_Raihan on 8/3/20.
//  Copyright © 2020 Twnibit_Raihan. All rights reserved.
//

import Foundation

protocol DataPass : class {
    func getData (str : String)
}

class ProtocolHelper {
    
    static let shared = ProtocolHelper()
    
    init(){}
    
    weak var dataDelegate : DataPass?
}
