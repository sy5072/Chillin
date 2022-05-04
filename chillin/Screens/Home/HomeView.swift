//
//  ContentView.swift
//  chillin
//
//  Created by Seungyun Kim on 2022/05/02.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            VStack {
                
//                Spacer()
                
                Image("img_title")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.size.width)
                    .padding(30)
                    
                
//                Spacer()
                
                
                
                Image("img_map")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.size.width*2)
                    .padding(40)
                
                Spacer()
                    
            }
            
            HStack {
                Image("img_characters")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:200)
                    .position(x: UIScreen.main.bounds.size.width*7/8, y:UIScreen.main.bounds.size
                    .height*5/6)
                
                Button(action: {
                    print("album!!")
                }){
                    ZStack {
                        Circle()
                            .fill(Color.white).frame(width: UIScreen.main.bounds.size.width/5, height: UIScreen.main.bounds.size.width/5 )
                            .shadow(color: .black.opacity(0.04), radius: 6, x: 0, y: 2)
                            .shadow(color: .black.opacity(0.04), radius: 2, x: 0, y: 1)
                            .shadow(color: .black.opacity(0.18), radius: 2, x: 0, y: 1)
                        
                        Image("img_album")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .colorMultiply(.lightBlue)
                            .frame(width:UIScreen.main.bounds.size.width/10)
                        
                    }
                }
                .position(x: UIScreen.main.bounds.size.width/3, y:UIScreen.main.bounds.size
                    .height*6/7)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
