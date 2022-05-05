//
//  ContentView.swift
//  chillin
//
//  Created by Seungyun Kim on 2022/05/02.
//

import SwiftUI

struct HomeView: View {
    @State var offset : CGFloat = 0
    @State var lastOffset : CGFloat = 0
    @GestureState var gestureOffset : CGFloat = 0
    @State var naviHide = false
    
    @State var isShowPhotoLibrary = false
    @State var UIimage = UIImage()

    
    
    var body: some View {
        ZStack {
            VStack {
                
                Image("img_title")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.size.width)
                    .padding(30)
                    
                
                
                
                
                Image("img_map")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.size.width*2)
                    .padding(40)
                
                Spacer()
                    
            }
            
            bottomSheetView
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension HomeView {
    var bottomSheetView : some View {
        GeometryReader{ geometryProxy -> AnyView in
            let height = UIScreen.main.bounds.height
            return AnyView(
                
                
                VStack {
                    if -offset < height / 2 {
                        HStack {
                            Image("img_characters")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:200)
                            
                            Spacer()
                            
                            Button(action: {
                                print("album!!")
                            }){
                                ZStack {
                                    Circle()
                                        .fill(Color.white).frame(width: UIScreen.main.bounds.size.width/5, height: UIScreen.main.bounds.size.width/5 )
                                        .customShadow()
                                    
                                    Image("img_album")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .colorMultiply(.lightBlue)
                                        .frame(width:UIScreen.main.bounds.size.width/10)
                                    
                                }
                                .padding(.trailing)
                                .padding(.top)
                            }
                        }
                        .frame(width:  UIScreen.main.bounds.width)
                    }
                    
                    
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width)
                            .clipShape(CustomCorner(corners: [.topLeft,.topRight], radius: 20))
                            .customShadow()

                        
                        VStack(){
                           
                             if -offset > height / 2 {
                                 
                                 Capsule()
                                     .fill(Color.gray)
                                     .frame(width: 60, height: 4)
                                     .padding(.top)
                                     .offset(y:20)
                                 DetailView(card: TownCard.sampleData[0], isShowPhotoLibrary: $isShowPhotoLibrary, UIimage: $UIimage)
                                 
                             } else {
                                 Capsule()
                                     .fill(Color.gray)
                                     .frame(width: 60, height: 4)
                                     .padding(.top)
                                 
                                 CardView(card: TownCard.sampleData[0], UIimage: $UIimage)
                             }
                            
                            
                        }
                        .frame(maxHeight : .infinity, alignment: .top)
                        
                    }
                }
                .offset(y: height-250)
                .offset(y: -offset > 0 ? (-offset <= (height - 70) ? offset : -(height - 70)) : 0)
                .gesture(DragGesture().updating($gestureOffset, body: { value, out, _ in
                    out = value.translation.height
                    onChange()
                })
                    .onEnded({ value in
                        
                        let maxHeight = height
                        withAnimation {
                            
                            if -offset > 80 && -offset < maxHeight / 2 {
                                offset = -(maxHeight * 0.4)
                                naviHide = false
                            }
                            else if -offset > maxHeight / 2 {
                                offset = -maxHeight*0.75
                                naviHide = true
                            }
                            else {
                                offset = 0
                            }
                            
                            lastOffset = offset
                        }
                    })
                )
            )
        }
        .frame(width: UIScreen.main.bounds.width)
        .ignoresSafeArea(.all, edges: .bottom)
    }
    
    // 바텀시트 변경함수
    func onChange(){
        DispatchQueue.main.async {
                self.offset = gestureOffset + lastOffset
            
        }
    }
}
