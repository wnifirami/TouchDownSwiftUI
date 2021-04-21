//
//  ContentView.swift
//  TouchDown
//
//  Created by Mac Pro Sam on 4/14/21.
//

import SwiftUI
import Foundation
struct ContentView: View {
     // MARK: - Proprties
    @EnvironmentObject var shop: Shop
      // MARK: - BODY
    var body: some View {
        ZStack {
            if !shop.showingProduct && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .padding(.vertical, 20)
                            CategoryGridView()
                            TitleView(title: "Helmet")
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedBack.impactOccurred()
                                            
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }//:Loop
                            })//:Grid
                            .padding(15)
                            TitleView(title: "Brands")
                            BrandGridView()
                            FooterView()
                               .padding(.horizontal)
                        }//: VStack
                    })//: Scrollview
           
                } //: VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
               ProductDetailView()
            }
        }// Zstack
        .ignoresSafeArea(.all, edges: .top)
    }
}
  // MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
