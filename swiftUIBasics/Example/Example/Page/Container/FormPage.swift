//
//  FormPage.swift
//  Example
//
//

import SwiftUI

struct FormPage: View {
    
    @State var firstName: String
    @State var lastName: String
    
    var body: some View {
        VStack {
            Form {
                TextField("First Name", text: $firstName)
                TextField("Last Name", text: $lastName)
            }
        }.navigationBarTitle(Text("Form"))
        
    }
}

struct FormPage_Previews: PreviewProvider {
    static var previews: some View {
        FormPage(firstName: "", lastName: "")
    }
}
