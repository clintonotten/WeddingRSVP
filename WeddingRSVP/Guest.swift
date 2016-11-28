//
//  Guest.swift
//  WeddingRSVP
//
//  Created by Clinton Otten on 25/11/2016.
//  Copyright © 2016 Next Academy. All rights reserved.
//

import Foundation

class Guest {
    static var all = [Guest]()
    
    var name : String = ""
    var status : String = ""

    init () {
        self.name = "Guest"
        self.status = "Maybe"
    }

}
