//
//  ContentView.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BasicCardView(image: Image("card_image"), cardDetails: "This is a basic card")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
