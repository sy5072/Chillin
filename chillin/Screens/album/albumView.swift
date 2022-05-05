//
//  albumView.swift
//  chillin
//
//  Created by Seungyun Kim on 2022/05/06.
//

import SwiftUI

struct albumView: View {
    
    @Binding var UIimage : [UIImage]
    @State var ind: Int = 0
    
    var body: some View {
        ZStack {
            
            ScrollView() {
                VStack {
                    
//                        Text("/( )/16")
                        ForEach(UIimage, id: \.self) {item in
                             //3
        //                    Text(item.townName)
                            Image(uiImage: item)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.width*4/5,alignment: .center)
            //                self.ind = ind + 1
                            
                    }
                }
    //            .padding(.leading)
                .frame(width: UIScreen.main.bounds.width, alignment: .center)

            }
            
            Image("img_palette")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width/2)
                .position(x: 185, y: -75)
        }
    }
}
//
//struct albumView_Previews: PreviewProvider {
//    static var UIimage = [UIImage(named: "img_plzAdd")]
//    static var previews: some View {
//        albumView(UIimage: <#T##Binding<[UIImage]>#>)
//    }
//}
