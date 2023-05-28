//
//  SignInUIView.swift
//  Nft
//
//  Created by Lara K on 07/11/1444 AH.
//

import SwiftUI

struct SignInUIView: View {
    var body: some View {
        // Color.black
        
        VStack {
         //   ZStack {
                VStack {
                    
                    ForEach(allSignIn) { signIn in

                         ZStack {
                             
                             Image(signIn.imageName)
                                 .padding(.trailing, 280.0)
                                 .frame(width: 350, height: 60)
                                 .overlay(RoundedRectangle (cornerRadius: 5)
                                     .stroke(.gray, lineWidth: 1))
                             
                             Button (signIn.text) {
                            } .font(.system(size: 16))
                              .padding(.all, 12)
                              .frame(width: 350, height: 55)
                              .padding(.trailing, 50.0)
                             
                          
                             
                        }
                        
                        
                    }
                }
               
                //  .padding()
                .foregroundColor(.white)
                
                // Spacer()
            } .padding()
                .frame(width: 400.0, height: 900.0)
                .background(Color.black)
       // }
    }
}

struct SignInUIView_Previews: PreviewProvider {
    static var previews: some View {
        SignInUIView()
    }
}
