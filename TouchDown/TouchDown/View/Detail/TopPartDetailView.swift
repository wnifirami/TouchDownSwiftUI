//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by Mac Pro Sam on 4/20/21.
//

import SwiftUI

struct TopPartDetailView: View {
    @State private var isAnimationg: Bool = false
    @EnvironmentObject var shop: Shop

    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //Price
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
                
            })//: VStack
            .offset(y: isAnimationg ? -50 : -75)
            Spacer()
            // Photo
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimationg ? 0 : 35)
        })//: HStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimationg.toggle()
            }
        }
        )
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
