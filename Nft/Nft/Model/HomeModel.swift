//
//  HomeModel.swift
//  Nft
//
//  Created by Lara K on 07/11/1444 AH.
//

import Foundation

struct Creators: Identifiable {
    var id = UUID()
    var imageName: String
    var name: String
    var userName: String
    
}

var c1 = Creators(imageName: "p1", name: "Anna Taylor", userName: "@TayAnna")
var c2 = Creators(imageName: "p2", name: "Mik Romano", userName: "@Romano")


var allCreators = [c1, c2]


