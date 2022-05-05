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
    @State var isAdded:Bool = false
    
    @State var townIndex: Int = 0

    
    
    var body: some View {
        ZStack {
            VStack {
                
                Image("img_title")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.size.width)
                    .padding(.top)
                    
                
                
                
                
                if (!isAdded) {
                    ZStack {
                        Group{
                            Image("img_map")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: UIScreen.main.bounds.size.width*2)
                                .padding(40)
                                .onTapGesture {
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }
                            
                            Image("img_jukjang")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.red)
                                .position(x: 2, y: 195)
                                .frame(width: 175)
                                .onTapGesture {
                                    townIndex=0
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }
                            
                            Image("img_gibuk")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.blue)
                                .position(x: -42, y: 245)
                                .frame(width: 55)
                                .onTapGesture {
                                    townIndex=1
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }
                            

                            Image("img_gigyee")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.yellow)
                                .position(x: -30, y: 298)
                                .frame(width: 84)
                                .onTapGesture {
                                    townIndex=2
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }

                            Image("img_singwang")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.green)
                                .position(x: 3, y: 254)
                                .frame(width: 50)
                                .onTapGesture {
                                    townIndex=3
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }

                            Image("img_cheongha")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.lightBlue)
                                .position(x: 62, y: 216)
                                .frame(width: 84)
                                .onTapGesture {
                                    townIndex=4
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }

                            Image("img_songla")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.purple)
                                .position(x: 53, y: 183)
                                .frame(width: 83)
                                .onTapGesture {
                                    townIndex=5
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }

                            Image("img_heunghae")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.pink)
                                .position(x: 79, y: 283)
                                .frame(width: 88)
                                .onTapGesture {
                                    townIndex=6
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }

                            Image("img_bukgu")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.Indigo)
                                .position(x: 75, y: 317)
                                .frame(width: 62)
                                .onTapGesture {
                                    townIndex=7
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }

                            Image("img_namgu")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.lightBlue)
                                .position(x: 87, y: 357)
                                .frame(width: 78)
                                .onTapGesture {
                                    townIndex=8
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }
                            
                            
                            
                            
                        }
                        
                        Group{
                        
                            Image("img_yeonil")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.orange)
                                .position(x: 43, y: 350)
                                .frame(width: 50)
                                .onTapGesture {
                                    townIndex=9
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }

                            Image("img_daesong")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.blue)
                                .position(x: 60, y: 400)
                                .frame(width: 45)
                                .onTapGesture {
                                    townIndex=10
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }

                            Image("img_ohcheon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.black)
                                .position(x: 90, y: 415)
                                .frame(width: 60)
                                .onTapGesture {
                                    townIndex=11
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }

                            Image("img_janggi")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.teal)
                                .position(x: 138, y: 425)
                                .frame(width: 63)
                                .onTapGesture {
                                    townIndex=12
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }

                            Image("img_donghae")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.gray)
                                .position(x: 150, y: 355)
                                .frame(width: 70)
                                .onTapGesture {
                                    townIndex=13
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }

                            Image("img_debo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.mint)
                                .position(x: 170, y: 320)
                                .frame(width: 27)
                                .onTapGesture {
                                    townIndex=14
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }

                            Image("img_guryong")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .colorMultiply(.brown)
                                .position(x: 167, y: 370)
                                .frame(width: 46)
                                .onTapGesture {
                                    townIndex=15
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                                }
                            
                        }
                        
                    }
                    .onTapGesture {
                        withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                        }
                    }
                    
//                    Image("img_gigyeMap")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: UIScreen.main.bounds.size.width*2)
//                        .padding(40)
                        
                } else {
                    ZStack {
                        Group{
                            
                            Image("img_map")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: UIScreen.main.bounds.size.width*2)
                                .padding(40)
                                .onTapGesture {
                                    withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                    }
                            }
                            
                            Image("img_jukjang")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .position(x: 395, y: 320)
                                .frame(width: 790)
                                
                            
                            Image("img_gibuk")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .position(x: 395, y: 320)
                                .frame(width: 790)
                            
                            Image("img_gigyee")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .position(x: 395, y: 320)
                                .frame(width: 790)
                            
                            Image("img_singwang")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .position(x: 395, y: 320)
                                .frame(width: 790)
                            
                            Image("img_cheongha")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .position(x: 395, y: 320)
                                .frame(width: 790)
                            
                            Image("img_songla")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .position(x: 395, y: 320)
                                .frame(width: 790)
                            
                            Image("img_heunghae")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .position(x: 395, y: 320)
                                .frame(width: 790)
                            
                            Image("img_bukgu")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .position(x: 395, y: 320)
                                .frame(width: 790)
                            
                            
                            
                            
                            
                            
                        }
                        
                        Group{
                            ZStack{
                                Image("img_namgu")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .position(x: 395, y: 320)
                                    .frame(width: 790)
                            
                                Image("img_yeonil")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .position(x: 395, y: 320)
                                    .frame(width: 790)
                                
                                Image("img_daesong")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .position(x: 395, y: 320)
                                    .frame(width: 790)
                                
                                Image("img_ohcheon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .position(x: 395, y: 320)
                                    .frame(width: 790)
                                
                                Image("img_janggi")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .position(x: 395, y: 320)
                                    .frame(width: 790)
                                
                                Image("img_donghae")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .position(x: 395, y: 320)
                                    .frame(width: 790)
                                
                                Image("img_debo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .position(x: 395, y: 320)
                                    .frame(width: 790)
                                
                                Image("img_guryong")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .position(x: 395, y: 320)
                                    .frame(width: 790)
                                    .onTapGesture {
                                        townIndex = 1
                                        print(townIndex)
                                        onChange()
                                        withAnimation {offset = -(UIScreen.main.bounds.height * 0.4)
                                        }
                                    }
                            }
                            
                            
                            
                            
                            
                        }
                        
                    }
                }
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
                                 DetailView(card: TownCard.sampleData[townIndex], isShowPhotoLibrary: $isShowPhotoLibrary, UIimage: $UIimage, isAdded: $isAdded)
                                 
                             } else {
                                 Capsule()
                                     .fill(Color.gray)
                                     .frame(width: 60, height: 4)
                                     .padding(.top)
                                 
                                 CardView(card: TownCard.sampleData[townIndex], UIimage: $UIimage)
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
                self.townIndex = townIndex
            
        }
    }
}
