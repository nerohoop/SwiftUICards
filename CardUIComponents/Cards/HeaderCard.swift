//
//  HeaderCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 17/09/2022.
//

import SwiftUI

struct HeaderCard: View {
    var body: some View {
        VStack {
            Image("portada")
                .resizable()
                .scaledToFit()
            
            Avatar(image: Image("avatar_4"), size: .xlarge)
                .offset(y: -70)
                .padding([.bottom], -70)
            
            VStack(spacing: 10) {
                Text("Cameron Williamson")
                    .font(.title)
                    .bold()
                
                Text("Web Development")
                    .font(.body)
                    .foregroundColor(.gray)
            }
            .padding([.top, .bottom], 10)
            
            HStack(spacing: 10) {
                CustomButton(text: "Follow", type: .outline)
                CustomButton(text: "Follow")
            }
            .padding([.bottom], 25)
        }
        .background(.white)
        .cornerRadius(20)
        .shadow(radius: 2)
    }
}

struct HeaderCard_Previews: PreviewProvider {
    static var previews: some View {
        HeaderCard()
            .frame(width: 380)
    }
}
