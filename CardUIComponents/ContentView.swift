//
//  ContentView.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Group {
                    PostCard()
                        .listRowSeparator(.hidden)
                        .padding([.bottom], 20)
                        .buttonStyle(PlainButtonStyle())
                    
                    OrderCard()
                        .listRowSeparator(.hidden)
                        .padding([.bottom], 20)
                        .buttonStyle(PlainButtonStyle())
                    
                    TitleProgressCard(backgroundColor: Color(0x8DD4EB))
                        .shadow(radius: 4)
                        .listRowSeparator(.hidden)
                        .padding([.bottom], 20)
                        .buttonStyle(PlainButtonStyle())
                    
                    TitleProgressCard()
                        .shadow(radius: 4)
                        .listRowSeparator(.hidden)
                        .padding([.bottom], 20)
                        .buttonStyle(PlainButtonStyle())
                    
                    ArticleCard()
                        .shadow(radius: 4)
                        .fixedSize(horizontal: false, vertical: true)
                        .listRowSeparator(.hidden)
                        .padding([.bottom], 20)
                        .buttonStyle(PlainButtonStyle())
                }
                
                Group {
                    MusicPlayerPreviewCard(title: "The Weeknd", subtitle: "Take My Breath ( Official release )", profile: Image("cover"))
                        .shadow(radius: 2)
                        .listRowSeparator(.hidden)
                        .padding([.bottom], 20)
                        .buttonStyle(PlainButtonStyle())
                    
                    MusicPlayerCard(coverImage: Image("avatar_3"), title: "Sunshine - Mix", subtitle: "Lookee Stefane")
                        .shadow(radius: 2)
                        .listRowSeparator(.hidden)
                        .padding([.bottom], 20)
                        .buttonStyle(PlainButtonStyle())
                    
                    AvatarCard(title: "Yolanda", subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing lorem ipsum dolor sit amet, consectetur adipiscing...", avatar: Image("avatar_6"))
                        .shadow(radius: 2)
                        .listRowSeparator(.hidden)
                        .padding([.bottom], 20)
                        .buttonStyle(PlainButtonStyle())
                    
                    ProfileFollowCard(title: "Johny", profile: Image("avatar_5"), accessoryImage: Image(systemName: "phone.fill"))
                        .shadow(radius: 2)
                        .padding([.bottom], 20)
                        .listRowSeparator(.hidden)
                        .buttonStyle(PlainButtonStyle())
                    
                    BoldProfileCard(title: "Maria", profile: Image("avatar_4"), accessoryImage: Image(systemName: "phone.fill"))
                        .shadow(radius: 2)
                        .padding([.bottom], 20)
                        .listRowSeparator(.hidden)
                        .buttonStyle(PlainButtonStyle())
                    
                    ProfileRightCard(title: "Julia Robert", subtitle: "frontend development", profile: Image("avatar_3"))
                        .shadow(radius: 2)
                        .padding([.bottom], 20)
                        .listRowSeparator(.hidden)
                        .buttonStyle(PlainButtonStyle())
                    
                    ProfileCard(title: "Julia Robert", subtitle: "frontend development", profile: Image("avatar_3"))
                        .shadow(radius: 2)
                        .padding([.bottom], 20)
                        .listRowSeparator(.hidden)
                        .buttonStyle(PlainButtonStyle())
                    
                    DarkAvatarCard(title: "Yolanda", subtitle: "Backend Development", avatar: Image("avatar_2"), iconImage: Image(systemName: "plus"))
                        .shadow(radius: 2)
                        .listRowSeparator(.hidden)
                        .padding([.bottom], 20)
                        .buttonStyle(PlainButtonStyle())
                    
                    AvatarCard(title: "Yolanda", subtitle: "Backend Development", avatar: Image("avatar_2"), iconImage: Image(systemName: "camera"))
                        .shadow(radius: 2)
                        .listRowSeparator(.hidden)
                        .padding([.bottom], 20)
                        .buttonStyle(PlainButtonStyle())
                                    
                    BasicCard(avatarImage: Image("avatar"), title: "Frank Esteban", subtitle: "Web Development", contentImage: Image("card_image"), contentText: "test", cardDescription: "This is a basic card")
                        .listRowSeparator(.hidden)
                        .padding([.bottom], 20)
                        .shadow(radius: 2)
                        .buttonStyle(PlainButtonStyle())
                }
            }
            .navigationTitle("Card Examples")
            .frame( maxWidth: .infinity)
            .listStyle(PlainListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
