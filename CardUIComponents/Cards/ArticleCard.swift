//
//  ArticleCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 25/08/2022.
//

import SwiftUI

struct ArticleCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 10) {
                Button {
                    print("Trend")
                } label: {
                    Text("TRENDS")
                        .bold()
                        .font(.caption)
                }
                .padding(EdgeInsets(top: 6, leading: 15, bottom: 6, trailing: 15))
                .foregroundColor(.white)
                .background(.purple)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                
                Button {
                    print("Design")
                } label: {
                    Text("DESIGN")
                        .bold()
                        .font(.caption)
                }
                .padding(EdgeInsets(top: 6, leading: 15, bottom: 6, trailing: 15))
                .foregroundColor(.white)
                .background(.cyan)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                                
                Spacer()
                
                Image(systemName: "heart")
                    .foregroundColor(.white)
                    .font(.title)
            }
            .padding(25)
            
            VStack(alignment: .leading) {
                MediaView(title: "Frank Esteban", subtitle: "Web Development", avatar: Image("avatar"), iconImage: Image(systemName: "camera"), isDarkMode: true)
                
                Text("Web Design templates Selection tes")
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                    .font(Font.system(size: 28, weight: .bold))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.purple, .blue, .cyan],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .padding([.leading, .trailing, .bottom], 25)
                
                Text("16 January 2017")
                    .foregroundColor(.white)
                    .font(.caption)
                    .padding([.leading, .trailing, .bottom], 25)
            }
        }
        .background(.black)
        .cornerRadius(20)
    }
}

struct ArticleCard_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCard()
            .frame(width: 360)
            .shadow(radius: 2)
    }
}
