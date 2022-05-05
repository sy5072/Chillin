//
//  CustomCorner.swift
//  chillin
//
//  Created by Seungyun Kim on 2022/05/03.
//

import SwiftUI

struct CustomCorner: Shape {
     
        var corners: UIRectCorner
        var radius: CGFloat
    
    func path(in rect: CGRect)-> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))

        return Path(path.cgPath)
    }
}
 

 
