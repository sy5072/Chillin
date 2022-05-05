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
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width/20)
                    .colorMultiply(.gray)
                    .padding(.bottom)
            }
            
            HStack {
                Text(card.townName)
                    .font(.system(size: 22)
                        .weight(.bold)
                    )
                    .foregroundColor(.Indigo)
                    
                
                Spacer()
                
                Button(action: {
                    print("add!!")
                }) {
                    Image("img_addButton")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width/10)
                    
                }
                
            }
            
            ImageSliderView(card: card)
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
