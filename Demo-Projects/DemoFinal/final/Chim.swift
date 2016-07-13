//
//  Chim.swift
//  final
//
//  Created by datnguyen on 7/9/16.
//  Copyright © 2016 datnguyen.com. All rights reserved.
//

import Foundation
struct chim {
    let idChim:String
    let tenChim:String
    let hinhChim:String
    init(){
        idChim = ""
        tenChim = ""
        hinhChim = ""
    }
    init(dic:Dictionary<String,AnyObject>)
    {
        if let idchim = dic["idChim"] as? String
        {
            idChim = idchim
        }else {
            idChim = ""
        }
        if let tenchim = dic["tenChim"] as? String
        {
            tenChim = tenchim
        }else {
            tenChim = ""
        }
        if let hinhchim = dic["hinhChim"] as? String
        {
            hinhChim = hinhchim
        }else
        {
            hinhChim = ""
        }
    }
}
