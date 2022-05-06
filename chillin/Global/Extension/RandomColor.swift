//
//  RandomColor.swift
//  chillin
//
//  Created by Seungyun Kim on 2022/05/06.
//

import SwiftUI

extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
