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
    
    @Binding var isShowPhotoLibrary: Bool
    @Binding var UIimage: [UIImage]
    @Binding var isAdded: Bool
    @Binding var colors: [Color]
    @Binding var colors2: [Color]
    @Binding var townIndex: Int
//    @Binding var inputImage: Image
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text(card.townName)
                    .font(.system(size: 22)
                        .weight(.bold)
                    )
                    .foregroundColor(.Indigo)
                    
                
                Spacer()
                
                Button(action: {
                    isShowPhotoLibrary = true
                }) {
                    Image("img_addButton")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width/10)
                    
                }
                
            }
            Image(uiImage: self.UIimage[townIndex])
                .resizable()
                .aspectRatio(contentMode: .fill)
                .customShadow()
                .frame(width: UIScreen.main.bounds.width*7/8, height: UIScreen.main.bounds.height/3)
                .cornerRadius(cardThumbNailCornerRadius)
                .padding(.top)
//            ImageSliderView(card: card)
//                .padding(.bottom)
            
            Text(card.townGuide)
                .frame(height: UIScreen.main.bounds.height/2, alignment: .top)
                .padding(.top)
            
            
                

        }
        .frame(width: UIScreen.main.bounds.width*7/8, height: UIScreen.main.bounds.height)
        .sheet(isPresented: $isShowPhotoLibrary) {
            ImagePicker(sourceType: .photoLibrary, selectedImage: self.$UIimage[townIndex], isAdded: self.$isAdded , colors: $colors, colors2: $colors2, townIndex: $townIndex)
        }
    }
    
    
    
   
}


//struct DetailView_Previews: PreviewProvider {
//    static var card = TownCard.sampleData[0]
//    static var isShowPhotoLibrary = false
//    static var UIimage = UIImage
//    static var previews: some View {
//        DetailView(card: card, isShowPhotoLibrary: isShowPhotoLibrary, UIimage: UIimage)
//    }
//}
