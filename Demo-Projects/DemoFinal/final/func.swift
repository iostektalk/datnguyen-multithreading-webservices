//
//  func.swift
//  final
//
//  Created by datnguyen on 7/9/16.
//  Copyright © 2016 datnguyen.com. All rights reserved.
//

import Foundation
import UIKit

func loadDaTaWithURLString(urlString:String,hoanThanh:(Data,URLResponse)->()){
    let url = URL(string: urlString)
    let request = URLRequest(url: url!)
    let session = URLSession.shared()
    session.dataTask(with: request) { (data, response,error) in
        hoanThanh(data!,response!)
    }.resume()
}
