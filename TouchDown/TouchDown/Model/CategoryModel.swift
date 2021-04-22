//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Mac Pro Sam on 4/15/21.
//

import Foundation
struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
