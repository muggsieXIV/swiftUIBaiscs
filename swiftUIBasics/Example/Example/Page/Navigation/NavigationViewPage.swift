//
//  NavigationViewPage.swift
//  Example
//
//

import SwiftUI

struct NavigationViewPage : View {
    var body: some View {
        NavigationView {
            Text("🧚‍♂️🧚‍♀️🧜‍♂️🧜‍♀️🧞‍♂️🧞‍♀️").blur(radius: 5)
            Text("Swifter Swifter")
                .bold()
                .foregroundColor(.orange)
                .font(.largeTitle)
        }
        .navigationBarTitle(Text("NavigationView"))
        .navigationBarItems(trailing: Button(action: {
            print("Tap")
        }, label: {
            Text("Right").foregroundColor(.orange)
        }))
        
    }
}

#if DEBUG
struct SpacerPage_Previews : PreviewProvider {
    static var previews: some View {
        NavigationViewPage()
    }
}
#endif
