//
//  BasicCardView.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 08/08/2022.
//

import SwiftUI

struct BasicCardView: View {
    var image: Image
    var cardDetails: String
    
    var body: some View {
        VStack(alignment: .leading) {
            MediaView(title: "Frank Esteban", subtitle: "Web Development", avatar: Image("avatar"))
            
            image
                .foregroundColor(.white)
            
            Text("This is a basic card")
                .font(.body)
                .foregroundColor(.gray)
                .padding([.top, .bottom, .trailing], 16)
                .padding(.leading, 25)
                
        }
        .padding(EdgeInsets(top: 14, leading: 0, bottom: 14, trailing: 0))
        .fixedSize(horizontal: false, vertical: true)
        .background(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(.white)
                .shadow(radius: 5)
        )
    }
}

struct BasicCardView_Previews: PreviewProvider {
    static var previews: some View {
        BasicCardView(image: Image("card_image"), cardDetails: "This is a basic card")
    }
}
