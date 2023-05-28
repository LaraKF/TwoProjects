//
//  ExploreModel.swift
//  Nft
//
//  Created by Lara K on 07/11/1444 AH.
//

import Foundation

struct Explore: Identifiable {
    var id = UUID()
    var imageName: String
    var text: String
    
}

var ex2 = Explore(imageName: "p2", text: "Music")
var ex3 = Explore(imageName: "p1", text: "Sport")
var ex4 = Explore(imageName: "p2", text: "Photo")


var allExplore = [ex2, ex3,ex4]
