//
//  ProductCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 18/09/2022.
//

import SwiftUI

struct ProductCard: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                VStack(alignment: .leading) {
                    Text("Nike Air Max")
                        .font(.largeTitle)
                        .bold()
                    Text("Running shoe")
                        .font(.body)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Image("nike_logo")
            }
            .padding([.top, .leading, .trailing], 25)
            
            Image("nike_shoe")
            
            HStack(alignment: .center) {
                Text("$95.99")
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                
                Image("heart_circle")
                    .resizable()
                    .frame(width: 88, height: 88)
                    .scaledToFit()
            }
            .padding([.leading, .trailing], 25)
        }
        .background(.white)
        .cornerRadius(20)
        .shadow(radius: 2)
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard()
            .frame(width: 360)
    }
}
