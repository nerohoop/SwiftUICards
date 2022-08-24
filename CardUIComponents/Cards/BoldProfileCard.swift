//
//  BoldProfileCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 24/08/2022.
//

import SwiftUI

struct BoldProfileCard: View {
    var title: String
    var profile: Image
    var accessoryImage: Image?
    
    var body: some View {
        HStack {
            profile
            
            Spacer()
                .frame(width: 25)
            
            Text(title)
                .foregroundColor(.black)
                .font(.title)
                .bold()
            
            Spacer()
            
            accessoryImage?
                .font(.title)
            
            Spacer()
                .frame(width: 25)
        }
        .background(.white)
        .cornerRadius(20)
    }
}

struct BoldProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        BoldProfileCard(title: "Maria", profile: Image("avatar_4"), accessoryImage: Image(systemName: "phone.fill"))
            .frame(width: 360)
            .shadow(radius: 2)
    }
}
