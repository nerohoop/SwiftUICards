//
//  TitleProgressCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 28/08/2022.
//

import SwiftUI

struct TitleProgressCard: View {
    var backgroundColor: Color = Color(0xEBD18D)
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment:.center, spacing: 10) {
                Avatar(image: Image("avatar_6"), size: .small)

                Spacer()
                
                Image(systemName: "ellipsis")
                    .font(.title)
                    .rotationEffect(.degrees(90))
            }
            .padding(25)
            
            VStack(alignment: .leading) {
                Text("Web Design templates Selection")
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .font(Font.system(size: 33, weight: .bold))
                    
                Spacer().frame(height: 15)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod.")
                    .font(Font.system(size: 16))
                    .lineLimit(2)
            }
            .padding(25)
            
            VStack(alignment: .leading) {
                ProgressView("135 Works / 45%", value: 45, total: 100)
                    .tint(.black)
                    .offset(y: -10)
                    .font(Font.system(size: 14, weight: .bold))
                    
            }
            .padding(25)
        }
        .background(backgroundColor)
        .cornerRadius(20)
    }
}

struct TitleProgressCard_Previews: PreviewProvider {
    static var previews: some View {
        TitleProgressCard()
            .frame(width: 360)
            .shadow(radius: 2)
    }
}
