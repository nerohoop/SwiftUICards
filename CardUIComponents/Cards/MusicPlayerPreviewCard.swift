//
//  MusicPlayerPreviewCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 25/08/2022.
//

import SwiftUI

struct MusicPlayerPreviewCard: View {
    var title: String
    var subtitle: String
    var profile: Image
    
    private let cornerRadius: CGFloat = 20
    
    var body: some View {
        HStack {
            profile
            
            Spacer()
                .frame(width: 10)
            
            VStack(alignment: .leading, spacing: 3) {
                Text(title)
                    .font(.title2)
                    .bold()
                    .lineLimit(1)
                
                Text(subtitle)
                    .font(.body)
                    .lineLimit(1)
            }
            .frame(maxWidth: 160)
            
            Spacer(minLength: 10)
            
            Button {
                print("play")
            } label: {
                Image(systemName: "play.fill")
                    .foregroundColor(.black)
                    .font(.title)
                    .background(Circle().fill(Color(.systemGray6)).frame(width: 60, height: 60))
            }
            
            Spacer()
//                .frame(width: 20)
        }
        .background(.white)
        .cornerRadius(cornerRadius)
    }
}

struct MusicPlayerPreviewCard_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerPreviewCard(title: "The Weeknd", subtitle: "Take My Breath ( Official release )", profile: Image("cover"))
            .frame(width: 380)
            .shadow(radius: 2)
    }
}
