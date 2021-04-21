//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Mac Pro Sam on 4/20/21.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // NavBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // Header
            HeaderDetailView()
                .padding(.horizontal)
            //DetailTopPart
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            // Detail bottom part
            VStack(alignment: .center, spacing: 0, content: {
                // rating +sizes
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                // Description
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//: Stcroll
                // Quantity + favorite
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                // AddToCart
                AddToCartDetailView()
                    .padding(.bottom, 20)
            })//: VStack
            .padding(.horizontal)
            .background(Color.white
                            .clipShape(CustomShape())
                            .padding(.top, -105)
            )
        })//: VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: sampleProduct.red,
                  green: sampleProduct.green,
                  blue: sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
        
    }
}
