//
//  Extensions.swift
//  CodabeeMeteo
//
//  Created by Matthieu PASSEREL on 07/03/2018.
//  Copyright © 2018 Matthieu PASSEREL. All rights reserved.
//

import Foundation


extension Double {
    
    func convertirEnIntString() -> String {
        let int = Int(self)
        return String(int) + "°C"
    }
    
}
