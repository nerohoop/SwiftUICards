//
//  CommerceCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 11/09/2022.
//

import SwiftUI

struct CommerceCard: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Buy Now")
                    .font(.system(size: 48))
                    .fontWeight(.heavy)
                    .lineLimit(2)
                
                Text("$8.99")
                    .font(.body)
                    .bold()
                
                Spacer()
                
                Image(systemName: "heart.fill")
                    .frame(width: 60, height: 60)
                    .foregroundColor(.pink)
                    .background(Color(0xF3F3F3))
                    .clipShape(Circle())
            }
            .padding(25)
            
            Spacer()
            
            Image("male_model")
                .padding([.top, .bottom, .trailing], 25)
        }
        .background(.white)
        .cornerRadius(20)
        .shadow(radius: 2)
    }
}

struct CommerceCard_Previews: PreviewProvider {
    static var previews: some View {
        CommerceCard()
            .frame(width: 400, height: 554)
    }
}
