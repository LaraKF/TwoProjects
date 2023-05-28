//
//  JSONManagerModel.swift
//  JsonAssignment
//
//  Created by Lara K on 08/11/1444 AH.
//

import Foundation

struct Person: Codable {
    let firstName, surname: String
    let phoneNumbers: [PhoneNumber]
    

    static let allPeople: [Person] = Bundle.main.decode(file: "UserInfo.json")
    static let samplePerson: Person = allPeople[0]
}


struct PhoneNumber: Codable {
    let type, number: String
}
