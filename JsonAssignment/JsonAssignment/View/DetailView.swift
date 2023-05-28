//
//  JsonAssignmentApp.swift
//  JsonAssignment
//
//  Created by Lara K on 08/11/1444 AH.

import SwiftUI

struct DetailView: View {
    var person: Person
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(person.firstName) \(person.surname)")
                .bold()
            Text("\(person.phoneNumbers[0].number)")

        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person: Person.samplePerson)
    }
}
