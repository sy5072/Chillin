//
//  Color+Extension.swift
//  chillin
//
//  Created by Seungyun Kim on 2022/05/03.
//

import SwiftUI

extension Color {
    static var lightBlue: Color {
        return Color(hex: "#02B2FF")
    }
    
    static var Indigo: Color {
        return Color(hex: "#3362BA")
    }
}

extension Color {
    init(hex: String) {
        var hexFormatted: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }
        
        assert(hexFormatted.count == 6, "Invalid hex code used.")
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)
        
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16)/255.0
                  ,green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
                  ,blue: CGFloat(rgbValue & 0x0000FF) / 255.0)
                  
    }
}
