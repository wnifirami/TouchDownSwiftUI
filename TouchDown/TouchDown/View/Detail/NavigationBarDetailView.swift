//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by Mac Pro Sam on 4/20/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        HStack  {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })//: Button
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })//: Button
        }//: Hstack
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
    }
}
