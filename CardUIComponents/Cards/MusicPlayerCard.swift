//
//  MusicPlayerCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 24/08/2022.
//

import SwiftUI

struct MusicPlayerCard: View {
    var coverImage: Image = Image("avatar_3")
    var title: String = "Sunshine - Mix"
    var subtitle: String = "Lookee Stefane"
    var isDarkMode: Bool = false
    
    private var textColor: Color {
        return isDarkMode ? .white : .black
    }
    
    private var subtitleTextColor: Color {
        return isDarkMode ? .gray : .gray
    }
    
    private var backgroundColor: Color {
        return isDarkMode ? .black : .white
    }
    
    private var buttonColor: Color {
        return isDarkMode ? .white : .black
    }
    
    private var progressColor: Color {
        return isDarkMode ? .white : .purple
    }
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Spacer()
                
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
                    .font(.title)
            }
            .padding([.top, .leading, .trailing], 30)
            .padding(.bottom, 8)
            
            coverImage
                .resizable()
                .scaledToFill()
                .frame(width: 172, height: 172)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color.white)
                        .shadow(color: .gray, radius: 2, x: 1, y: 2)
                )
            
            VStack {
                Text(title)
                    .foregroundColor(textColor)
                    .font(.title)
                    .bold()
                
                Text(subtitle)
                    .foregroundColor(subtitleTextColor)
                    .font(.body)
                    .foregroundColor(.gray)
            }
            
            HStack(alignment: .center) {
                Text("03:34")
                    .foregroundColor(.gray)
                    .font(.caption)
                
                ProgressView("", value: 10, total: 100)
                    .tint(progressColor)
                    .offset(y: -10)
                
                Text("02:04")
                    .foregroundColor(.gray)
                    .font(.caption)
            }
            .padding([.top, .bottom])
            .padding([.leading, .trailing], 30)
            
            HStack(alignment: .center, spacing: 35) {
                Button {
                    print("repeat")
                } label: {
                    Image(systemName: "repeat")
                        .foregroundColor(buttonColor)
                        .font(.title3)
                }
                
                Button {
                    print("backward")
                } label: {
                    Image(systemName:  "backward.fill")
                        .foregroundColor(buttonColor)
                        .font(.title2)
                }
                
                Button {
                    print("play")
                } label: {
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                        .font(.title)
                        .background(Circle().fill(Color(.systemGray6)).frame(width: 60, height: 60))
                }
                
                Button {
                    print("forward")
                } label: {
                    Image(systemName: "forward.fill")
                        .foregroundColor(buttonColor)
                        .font(.title2)
                }
                
                Button {
                    print("shuffle")
                } label: {
                    Image(systemName: "shuffle")
                        .foregroundColor(buttonColor)
                        .font(.title3)
                }
            }
            .padding()
            
            Spacer()
                .frame(height: 30)
        }
        .background(backgroundColor)
        .cornerRadius(20)
        .shadow(radius: 2)
    }
}

struct MusicPlayerCard_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerCard()
            .frame(width: 360, height: 480)
            .shadow(radius: 2)
    }
}
