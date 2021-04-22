//
//  ProductModel.swift
//  TouchDown
//
//  Created by Mac Pro Sam on 4/15/21.
//

import Foundation
struct Product: Codable, Identifiable {
    let id, price: Int
    let name, image, description: String
    let color: [Double]
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }
    
    var formattedPrice: String { return "$\(price)"}
}
