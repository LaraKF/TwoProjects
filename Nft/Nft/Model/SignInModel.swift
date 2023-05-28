//
//  SignInModel.swift
//  Nft
//
//  Created by Lara K on 07/11/1444 AH.
//

import Foundation

struct SignIn: Identifiable {
    var id = UUID()
    var imageName: String
    var text: String
    
}

var signIn2 = SignIn(imageName: "Fireblocks", text: "Connect with Fireblocks")
var signIn3 = SignIn(imageName: "tokanery", text: "Connect with Tokanery")
var signIn4 = SignIn(imageName: "wallet", text: "Connect with Wallet")
var signIn5 = SignIn(imageName: "uniPass", text: "Connect with UniPass")


var allSignIn = [signIn2, signIn3, signIn4, signIn5]

