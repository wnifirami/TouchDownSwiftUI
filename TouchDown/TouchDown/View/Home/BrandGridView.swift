//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Mac Pro Sam on 4/15/21.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands){ brand in
                    BrandItemView(brand: brand)
                }
            })//: Grid
            .frame(height: 200)
            .padding(15)
        })// : Scrolll
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
