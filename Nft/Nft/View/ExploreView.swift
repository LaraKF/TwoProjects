//
//  ExploreView.swift
//  Nft
//
//  Created by Lara K on 07/11/1444 AH.
//

import SwiftUI

struct ExploreView: View {
   // @State private var search: String = ""
    var body: some View {
        VStack {
            
            
            HStack() {
                Image("eth")
                    .resizable()
                    .frame(width: 200.0, height: 80.0)
                    .padding(.trailing, 150.0)

                Image(systemName: "qrcode.viewfinder")
                    .imageScale(.large)
                    .foregroundColor(Color.white)
            }
            .padding(.top, 150.0)
            .frame(width: 350.0, height: 100.0)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Explore the best")
                        .foregroundColor(.white)

                    Text("NFTS Arts")
                    .foregroundColor(Color("mainColor")) }.padding(.trailing, 100.0) }.padding(.top, 80.0).font(.title2)

            
            HStack {
                Image(systemName: "magnifyingglass")
                    .imageScale(.large)
                    .foregroundColor(Color.white)
                TextField("", text: .constant("Search items, sellers, collection"))
                    .padding(.leading)
                    .foregroundColor(Color.gray)
                    .font(.system(size: 14))
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 5)
                .stroke(lineWidth: 1)
                .foregroundColor(Color("color2")))
            .background(Color("color2"))
            
  
            ZStack {
                Text("Categories")
                    .foregroundColor(.white)
                    .font(.title3)
                    .padding(.trailing, 260.0)
            } .padding(.top)
            

            ScrollView(.horizontal) {
                
                HStack(spacing: 8) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color("mainColor"))
                            .frame(width: 100.0, height: 40)
                        Text("Art")
                            .foregroundColor(Color.black)
                            .font(.system(size: 16)) }
                    
                    ForEach(allExplore) { explore in
                     ZStack {
                      RoundedRectangle(cornerRadius: 5)
                          .fill(Color("color2"))
                          .frame(width: 100.0, height: 40)
                      Text(explore.text)
                          .foregroundColor(Color.white)
                          .font(.system(size: 16)) } } }
            } .padding(.trailing, 30.0)
                //***
                
                ScrollView(.vertical) {
                    ScrollView(.horizontal) {
                        HStack(spacing: 11) {
                            ForEach(0..<2) {
                                cardView(img: "ex\($0)")
                                    .frame(width: 200, height: 200)
                            }
                        }
                        HStack(spacing: 11) {
                            ForEach(2..<4) {
                                cardView(img: "ex\($0)")
                                    .frame(width: 200, height: 200)
                            }
                        }
                        .padding(.top)
                    } .padding(.bottom, 30.0)
                }
                .padding(.top, 20.0)
                //***
                
//            } .padding(.trailing, 30.0)
            
            } .padding()
            .frame(width: 400.0, height: 900.0)
            .background(Color.black)
        }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
