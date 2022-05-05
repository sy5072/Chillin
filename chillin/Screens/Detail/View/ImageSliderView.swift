//
//  ImageSliderView.swift
//  chillin
//
//  Created by Seungyun Kim on 2022/05/05.
//

import SwiftUI

struct ImageSliderView: View {
    let card: TownCard
    let cardThumbNailCornerRadius: CGFloat = 10
    
    var body: some View {
                // 2
                TabView {
                    ForEach(card.image ?? ["img_plzAdd"], id: \.self) { item in
                         //3
                         Image(item)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .customShadow()
                    }
                }
                .frame(width: UIScreen.main.bounds.width*7/8, height: UIScreen.main.bounds.height/4)
                .cornerRadius(cardThumbNailCornerRadius)
                .tabViewStyle(PageTabViewStyle())
            
    }
}

struct ImageSliderView_Previews: PreviewProvider {
    static var card = TownCard.sampleData[0]
    static var previews: some View {
        ImageSliderView(card: card)
//                    .previewLayout(.fixed(width: 400, height: 300))
    }
}
