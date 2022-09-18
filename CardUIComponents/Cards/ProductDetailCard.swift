//
//  ProductDetailCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 18/09/2022.
//

import SwiftUI

struct ProductDetailCard: View {
    @State private var count = 0

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.backward")
                    .font(.largeTitle)
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .font(.largeTitle)
            }
            .padding(25)
            
            Image("wine")
                .resizable()
                .scaledToFit()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("PINOT NOIR")
                    .font(.title)
                    .bold()
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.")
                    .font(.body)
            }
            .padding(25)
            
            HStack {
                Text("$16.95")
                    .font(.title)
                    .bold()
                
                Spacer()
                
                Stepper(String(count)) {
                    count = min(count + 1, 10)
                } onDecrement: {
                    count = max(count - 1, 0)
                }
                .frame(width: 120)

            }
            .padding(25)
        }
        .background(.white)
        .cornerRadius(20)
        .shadow(radius: 2)
    }
}

struct ProductDetailCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailCard()
            .frame(width: 380)
    }
}
