//
//  CardView.swift
//  chillin
//
//  Created by Seungyun Kim on 2022/05/04.
//

import SwiftUI

struct CardView: View {
    
    let card: TownCard
    let cardThumbNailCornerRadius: CGFloat = 10
    let cardPadding: CGFloat = 8
    
    var body: some View {
        VStack(alignment: .center){
            Rectangle()
                .frame(height: 324.0)
                .foregroundColor(.white)
                .cornerRadius(12)
                .overlay{
                    innerView
                }
                .customShadow()
        }
    }
    
    var innerView: some View {
        VStack {
            Text(card.townName)
                
                .font(.system(size: 16)
                    .weight(.semibold)
                )
                .foregroundColor(.lightBlue)
                .padding(.bottom)
                .frame(width: UIScreen.main.bounds.width*7/8, alignment: .leading)
            
            Image(card.image?[0] ?? "img_plzAdd")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(cardThumbNailCornerRadius)
                .customShadow()

        }
        .frame(width: UIScreen.main.bounds.width*7/8, height: UIScreen.main.bounds.height/4)
    }
}


struct CardView_Previews: PreviewProvider {
    static var card = TownCard.sampleData[0]
    static var previews: some View {
        CardView(card: card)
        
    }
}
