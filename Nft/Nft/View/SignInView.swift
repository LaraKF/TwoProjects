//
//  SignInView.swift
//  Nft
//
//  Created by Lara K on 06/11/1444 AH.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        VStack {
          VStack {
            
              ZStack {
                  
                      Text("Skip")
                          .foregroundColor(Color("mainColor"))
                      .padding(.leading, 260.0) }
              
             ZStack {
            Text("Sighn In")
                .font(.title)
                .bold()
                 .foregroundColor(Color("mainColor")) }
             .padding(.top, 50.0)
            
            ZStack {
                Text("With Wallet")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color.white) }
            
            ZStack {
                Text("Sign In with one of available wallet or \ncreate a new wallet.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 16)) } .padding()
            
              NavigationLink(destination:
                TabBarView()) {
                  ZStack{
                      
                      Button ("Connect with MetaMask") {
                      } .font(.system(size: 16))
                          .padding(.all, 12)
                          .frame(width: 350, height: 55)
                          .padding(.trailing, 50.0)
                      Image("metaMask")
                          .padding(.trailing, 280.0)
                          .frame(width: 350, height: 60)
                          .overlay(RoundedRectangle (cornerRadius: 5)
                            .stroke(Color("mainColor"), lineWidth: 1))
                      
                  }.padding(.top, 50.0) .foregroundColor(.white)
              }
              VStack {
                  ForEach(allSignIn) { signIn in
                       ZStack {
                           Image(signIn.imageName)
                               .padding(.trailing, 280.0)
                               .frame(width: 350, height: 60)
                               .overlay(RoundedRectangle (cornerRadius: 5)
                                   .stroke(Color("Secondary"), lineWidth: 1))
                           
                           Button (signIn.text) {
                          } .font(.system(size: 16))
                           
                            .padding(.all, 12)
                            .frame(width: 350, height: 55)
                            .padding(.trailing, 50.0)

                       } }
                  .frame(width: 350.0)
                  .background(Color("color2"))
               
                          
                      
                  
                  
              } .foregroundColor(.white)}
            .padding(.bottom, 150.0) } .padding().frame(width: 400.0, height: 900.0).background(Color.black)
        
        }
    }
    
    struct SignInView_Previews: PreviewProvider {
        static var previews: some View {
            SignInView()
        }
    }

