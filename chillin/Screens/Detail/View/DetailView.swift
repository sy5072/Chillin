//
//  CardView.swift
//  chillin
//
//  Created by Seungyun Kim on 2022/05/04.
//

import SwiftUI

struct DetailView: View {
    
    let card: TownCard
    let cardThumbNailCornerRadius: CGFloat = 10
    let cardPadding: CGFloat = 8
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Button(action: {
                print("add!!")
            }) {
                Image(systemName: "chevron.down")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width/17)
                    .colorMultiply(.gray)
            }
            
            HStack {
                Text(card.townName)
                    
                    .font(.system(size: 22)
                        .weight(.semibold)
                    )
                    .foregroundColor(.lightBlue)
                    
                
                Spacer()
                
                Button(action: {
                    print("add!!")
                }) {
                    Image("img_addButton")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width/10)
                    
                }
                
            }
            
            Image(card.image?[0] ?? "img_plzAdd")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(cardThumbNailCornerRadius)
                .customShadow()
                .padding(.bottom)
            
            Text(card.townGuide)
                .frame(height: UIScreen.main.bounds.height/2, alignment: .top)
            
            
                

        }
        .frame(width: UIScreen.main.bounds.width*7/8, height: UIScreen.main.bounds.height*4/5)
    }
    
   
}


struct DetailView_Previews: PreviewProvider {
    static var card = TownCard.sampleData[0]
    static var previews: some View {
        DetailView(card: card)
        
    }
}
