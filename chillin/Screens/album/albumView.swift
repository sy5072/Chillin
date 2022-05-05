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
        ScrollView() {
            VStack(alignment: .leading) {
                ForEach(TownCard.sampleData, id: \.self) {item in
                     //3
                    Text(item.townName)
                    Image(uiImage: UIimage[ind])
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width/6)
    //                self.ind = ind + 1
                        
                }
            }
            .frame(width: UIScreen.main.bounds.width*4/5, alignment: .leading)

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
