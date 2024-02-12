//
//  ContentView.swift
//  my_ios
//
//  Created by 김홍석 on 2/11/24.
//

import SwiftUI

struct AppView: View {
    var Apps:[AppItems]=[AppItems(name:"toss",comment:"금융이 쉬워진다 ",imagename:"toss_image"),
                         AppItems(name:"blind",comment:"모든 변화의 시작 "
                                  ,imagename:"blind_image"),
                         AppItems(name:"coupang",comment:"스마트한 쇼핑을 위한 완벽한 장소",imagename:"coupang_image"),
                         AppItems(name:"carrot",comment:"당신 근처의 지역생활 커뮤니티 ",imagename:"carrot_Image"),
                         AppItems(name:"hometax",comment:"금융 ",imagename:"hometax_image")]
    

    
    var body: some View {
        ZStack{
            Color(UIColor.black)
                .ignoresSafeArea()
            VStack{
                HStack{
                    Text("투데이")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .foregroundColor(.white)
                    Text("2월 12일")
                        .foregroundColor(.gray)
                    Spacer()
                    Image("hs")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height:40)
                }
                Image("first")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                Image("second")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                List(Apps){item in
                    HStack{
                        Image(item.imagename)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50,height: 50)
                    }
                    
                }
            }
            
        }
        
    }
}

#Preview {
    AppView()
}
