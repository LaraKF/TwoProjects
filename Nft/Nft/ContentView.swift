//
//  ContentView.swift
//  Nft
//
//  Created by Lara K on 06/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("nft1")
                        .resizable()
                        .ignoresSafeArea()
                }
                
                HStack {
                    Text("Welcome to")
                        .font(.title)
                        .foregroundColor(Color.white)
                    
                    
                    Text("NFT")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("mainColor"))
                    
                }
                
                ZStack {
                    Text("Marketplace")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color("mainColor"))
                    
                    
                }
                ZStack{
                    Text("Discover, Collect and Sell Extraordinary NFTs on The World's First and Largest \nMarketplace")
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 16))
                    
                } .padding()
                
                
            NavigationLink(destination:
              SignInView()) {
                Button( "Get Started") {
                }
                .bold()
                .font(.system(size: 14))
                .padding(.all, 8)
                .frame(width: 300, height: 45)
                // .background(.black)
                .cornerRadius (8)
                .cornerRadius (8)
                .foregroundColor(.white)
                
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("mainColor"), lineWidth: 1)
                    
                )
                .padding(20)
                
            }
                PageIndicator()
                
                
            }
            .padding()
            .background(Color.black)
        }
    }
}

struct PageIndicator: View {
    @State private var currentPage = 2
    let numPages: Int = 3

    private let spacing: CGFloat = 10
    private let dotSize: CGFloat = 8

    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: spacing) {
                ForEach(0 ..< numPages, id: \.self) {
                    DotIndicator(pageIndex: $0, isOn: self.$currentPage)
                        .frame(width: self.dotSize, height: self.dotSize)
                }
            }
        }
    }
}

struct DotIndicator: View {
    let pageIndex: Int

    @Binding var isOn: Int

    var body: some View {
        Button(action: {
            self.isOn = self.pageIndex
        }) {
            Image(systemName: "circle.fill")
                .foregroundColor(Color("mainColor"))
                .imageScale(.small)
                .scaleEffect(isOn == pageIndex ? 0.6 : 0.6) // change the color
             //   .animation(.spring())
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
