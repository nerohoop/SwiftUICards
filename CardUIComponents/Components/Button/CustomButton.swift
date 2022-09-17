//
//  Button.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 09/08/2022.
//

import SwiftUI

enum ButtonType {
    case normal, outline
}

enum ButtonSize {
    case small, medium, large
}

enum ButtonCornerType {
    case normal, rounded
}

struct CustomButton: View {
    var text: String
    var type: ButtonType? = .normal
    var size: ButtonSize? = .medium
    var cornerType: ButtonCornerType? = .normal
    var bgColor: Color?
    var clicked: (() -> Void) = {}
    
    private var font: Font {
        switch self.size {
        case .small:
            return .system(size: 11, weight: .bold)
        case .medium:
            return .system(size: 13, weight: .bold)
        case .large:
            return .system(size: 15, weight: .bold)
        case .none:
            return .system(size: 11, weight: .bold)
        }
    }
    
    private var foregroundColor: Color {
        switch self.type {
        case .normal:
            return Color.white
        case .outline:
            return Color.black
        case .none:
            return Color.white
        }
    }
    
    private var backgroundColor: Color {
        switch self.type {
        case .normal:
            return Color.black
        case .outline:
            return Color.white
        case .none:
            return Color.black
        }
    }
    
    private var padding: EdgeInsets {
        switch self.size {
        case .small:
            return EdgeInsets(top: 9, leading: 16, bottom: 9, trailing: 16)
        case .medium:
            return EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16)
        case .large:
            return EdgeInsets(top: 16, leading: 20, bottom: 16, trailing: 20)
        case .none:
            return EdgeInsets(top: 9, leading: 16, bottom: 9, trailing: 16)
        }
    }
    
    private var cornerRadius: CGFloat {
        switch self.cornerType {
        case .normal:
            return 4
        case .rounded:
            return 50
        case .none:
            return 4
        }
    }
    
    private var borderWidth: CGFloat {
        switch self.type {
        case .normal:
            return 0
        case .outline:
            return 2
        case .none:
            return 0
        }
    }
    
    var body: some View {
        Button(action: clicked) {
            Text(text)
                .bold()
        }
        .font(font)
        .padding(padding)
        .foregroundColor(foregroundColor)
        .background(bgColor ?? backgroundColor)
        .cornerRadius(cornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(.black, lineWidth: borderWidth)
        )
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack() {
            HStack {
                CustomButton(text: "DEFAULT")
                CustomButton(text: "OUTLINE", type: .outline)
                CustomButton(text: "DEFAULT", cornerType: .rounded)
                CustomButton(text: "OUTLINE", type: .outline, cornerType: .rounded)
            }
            HStack {
                CustomButton(text: "SMALL", size:.small)
                CustomButton(text: "SMALL", type: .outline, size:.small)
                CustomButton(text: "SMALL", type: .normal, size:.small, cornerType: .rounded)
                CustomButton(text: "SMALL", type: .outline, size:.small, cornerType: .rounded)
            }
            HStack {
                CustomButton(text: "LARGE", size:.large)
                CustomButton(text: "LARGE", type: .outline, size:.large)
                CustomButton(text: "LARGE", size:.large, cornerType: .rounded)
                CustomButton(text: "LARGE", type:.outline ,size:.large, cornerType: .rounded)
            }
        }
    }
}
