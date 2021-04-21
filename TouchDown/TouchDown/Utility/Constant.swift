//
//  Constant.swift
//  TouchDown
//
//  Created by Mac Pro Sam on 4/14/21.
//

import SwiftUI
// MARK: - DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Player] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[0]
// MARK: -  COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)
// MARK: -  Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}
// MARK: - UX
let feedBack = UIImpactFeedbackGenerator(style: .medium)
// MARK: - API
// MARK: -  Image
// MARK: -  FONT
// MARK: - STRING
// MARK: -  MISC
