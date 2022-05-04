//
//  SplashView.swift
//  chillin
//
//  Created by Seungyun Kim on 2022/05/03.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        Image("img_logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.size.width/3)

    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
