//
//  Shop.swift
//  TouchDown
//
//  Created by Mac Pro Sam on 4/21/21.
//

import Foundation
class Shop : ObservableObject {
   @Published  var showingProduct: Bool = false
   @Published  var selectedProduct: Product? = nil
}
