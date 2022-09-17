//
//  OrderCard.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 11/09/2022.
//

import SwiftUI

struct OrderCard: View {
    @State private var showingAlert = false

    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text("Strawberry Cake")
                    .bold()
                    .font(.title)
                
                Spacer()
                
                // Two icons
                HStack(spacing: 5) {
                    Image(systemName: "leaf.fill")
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                        .background(.green)
                        .clipShape(Circle())
                    
                    Image(systemName: "flame.fill")
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                        .background(.red)
                        .clipShape(Circle())
                }
            }
            .padding(25)
            
            Image("cupcake")
                .resizable()
                .scaledToFit()
                .padding(0)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.")
                .font(.body)
                .padding([.top, .leading, .trailing], 25)
            
            HStack {
                Text("$13.90")
                    .font(.title2)
                    .bold()
                
                Text("$18.90")
                    .foregroundColor(.orange)
                    .strikethrough()
                
                Spacer()
                
                CustomButton(text: "ORDER NOW", type:.outline) {
                    showingAlert = true
                }
                .alert("Order now!!", isPresented: $showingAlert) {
                            Button("OK", role: .cancel) { }
                        }
            }
            .padding(25)
        }
        .background(.white)
        .cornerRadius(20)
        .shadow(radius: 2)
    }
}

struct OrderCard_Previews: PreviewProvider {
    static var previews: some View {
        OrderCard()
            .frame(width: 360)
    }
}
