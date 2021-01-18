//
//  AlertPage.swift
//  Example
//
//

import SwiftUI

struct AlertPage : View {
    
    @State var showAlert = false
    
    var body: some View {
        Button(action: {
            self.showAlert = true
            print("Tap")
        }) {
            Text("Click")
                .font(.system(size: 40,
                              design: .rounded))
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("This is an alert!"),
                  message: Text("Let us know if it worked"),
                  primaryButton: .destructive(Text("Yes")) { print("It worked") },
                  secondaryButton: .cancel())
        }).navigationBarTitle(Text("Alert"))
        
    }
}

#if DEBUG
struct AlertPage_Previews : PreviewProvider {
    static var previews: some View {
        AlertPage()
    }
}
#endif
