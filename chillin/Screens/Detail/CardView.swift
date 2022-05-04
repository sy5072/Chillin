//
//  CardView.swift
//  chillin
//
//  Created by Seungyun Kim on 2022/05/04.
//

import SwiftUI

struct CardView: View {
    
    let card: GuideCard
    
    // MARK: - Card Property
    
    let cardThumbNailSize: CGFloat = 135
    let cardThumbNailCornerRadius: CGFloat = 10
    let cardPadding: CGFloat = 8
    
    var body: some View {
        VStack(alignment: .center){
            Rectangle()
                .frame(height: 324.0)
                .foregroundColor(.white)
                .cornerRadius(12)
                .overlay {
                    innerView
                }
                .customShadow()
        }
        
    }
    
    var innerView: some View {
            VStack(alignment: .center) {
                Text(card.cardName)
                    .font(
                        .system(size: 24)
                        // small title font size로 수정할것
                            .weight(.semibold)
                    )
                    .foregroundColor(.mainGreen)
                    .multilineTextAlignment(.center)
                    .accessibilityAddTraits([.isButton, .isHeader])
                    .font(.headline)
                    .padding(.bottom)
                
                HStack{
                    
                    // 왼쪽 이미지
                    Image(card.image[0])
                        .resizable()
                        .scaledToFill()
                        .frame(width: cardThumbNailSize, height: cardThumbNailSize)
                        .clipped()
                        .cornerRadius(cardThumbNailCornerRadius)
                        .customShadow()
                        .padding(.trailing, 14)
                    
                    // 오른쪽 이미지
                    Image(card.image[1])
                        .resizable()
                        .scaledToFill()
                        .frame(width: cardThumbNailSize, height: cardThumbNailSize)
                        .clipped()
                        .cornerRadius(cardThumbNailCornerRadius)
                        .customShadow()
                }
                
                VStack(alignment: .leading){
                    // TODO: - To the left!
                    Text(card.guideLine)
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                        .frame(height: 60.0)
                        .padding(.top, 12)
                        .padding(.horizontal, 20)
                    
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var card = GuideCard.sampleData[3]
    static var previews: some View {
        CardView(card: card)
    }
}
