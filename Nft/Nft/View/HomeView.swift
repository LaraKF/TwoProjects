//
//  HomeView.swift
//  Nft
//
//  Created by Lara K on 06/11/1444 AH.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            
            
            HStack() {
                Image("eth")
                    .resizable()
                    .frame(width: 200.0, height: 80.0)
                    .padding(.trailing, 100.0)
                
                
                Image(systemName: "magnifyingglass")
                    .imageScale(.large)
                    .foregroundColor(Color.white)
                
                
                Image(systemName: "qrcode.viewfinder")
                    .imageScale(.large)
                    .foregroundColor(Color.white)
            }
            .padding(.top, 150.0)
            .frame(width: 350.0, height: 100.0)
            
            
            VStack(alignment: .leading) {
                Text("Discover")
                    .foregroundColor(Color("mainColor"))
                
                Text("Collect and Trade")
                    .foregroundColor(.white)
                
                HStack {
                    Text("Miraculos")
                        .foregroundColor(.white)
                    
                    
                    
                    Text("NFTS")
                        .foregroundColor(Color("mainColor"))
                        
                } .padding(.bottom, 40.0)
            }.font(.title2)
                .padding(.trailing, 200.0)
                .padding(.top, 80.0)
            
            ScrollView(.vertical) {
                HStack {
                    Text("Trending NFTs")
                        .foregroundColor(.white)
                        .font(.title3)
                        .padding(.trailing, 150.0)
                    
                    Text("View More")
                        .foregroundColor(.gray)
                        .font(.system(size: 14))
                } .padding(.bottom)
                
                ScrollView(.horizontal) {
                    HStack(spacing: 8) {
                        ForEach(0..<3) {
                            cardView(img: "photo\($0)")
                            // Text("photo\($0)")
                            //  .foregroundColor(.white)
                            //   .font(.largeTitle)
                                .frame(width: 200, height: 200)
                            //  .background(.black)
                        }
                    }
                } .padding(.bottom, 30.0)
                
                HStack {
                    Text("Trending Creators")
                        .foregroundColor(.white)
                        .font(.title3)
                        .padding(.trailing, 130.0)
                    
                    Text("View More")
                        .foregroundColor(.gray)
                        .font(.system(size: 14))
                } .padding(.bottom)
                
                
                ScrollView(.horizontal) {
                    HStack(spacing: 8) {
                        ForEach(allCreators) { creators in
                         
                      ZStack {
                          RoundedRectangle(cornerRadius: 25)
                              .fill(Color("color2"))
                              .frame(width: 245.0, height: 110.0)
                            HStack {
                                Image(creators.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(Circle())
                                    .frame(width: 110.0, height: 110.0)

                                
                                VStack{
                                    Text(creators.name)
                                        .font(.title3)
                                        .foregroundColor(Color.white)
                                        .padding(.top)
                                    
                                    Text(creators.userName)
                                        .font(.system(size: 14))
                                        .foregroundColor(Color.white)
                                        .padding(.trailing, 35.0)
                                    
                                    Text("Follow")
                                        .font(.system(size: 16))
                                        .padding(.top, 5.0)
                                        .foregroundColor(Color("mainColor"))
                                        .padding(/*@START_MENU_TOKEN@*/.trailing, 50.0/*@END_MENU_TOKEN@*/)
                                       // .padding(/*@START_MENU_TOKEN@*/.trailing, 50.0/*@END_MENU_TOKEN@*/)
                                }
                                .padding([.bottom, .trailing]) }
                      }
                        } }
                    
                } .padding(.trailing, 30.0)
                
                HStack {
                    Text("Mint Now")
                        .foregroundColor(.white)
                        .font(.title3)
                        .padding(.trailing, 200.0)
                    
                    Text("View More")
                        .foregroundColor(.gray)
                        .font(.system(size: 14))
                } .padding(.bottom)
                
                ScrollView(.horizontal) {
                    HStack(spacing: 8) {
                        ForEach(0..<3) {
                            cardView(img: "pho\($0)")
                                .frame(width: 200, height: 200) } } } }
        }   .padding()
            .frame(width: 400.0, height: 900.0)
            .background(Color.black)
    }
}

    struct cardView : View {
       var img = ""
       var body: some View {
          VStack {
            Image (img)
                  .resizable()
                .frame (width: 200, height: 210)
                .cornerRadius (20)
        }
    }
    
}

    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
    }
}
