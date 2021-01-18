//
//  NavigationButton.swift
//  Example
//
//

import SwiftUI

struct NavigationButtonPage : View {
    var body: some View {
        NavigationLink(destination: NavigationButtonPage()) {
            Text("NavigationButton").bold()
                .foregroundColor(.orange)
                .font(.largeTitle)
            }
    .navigationBarTitle(Text("Page"))
    }
}

#if DEBUG
struct NavigationButtonPage_Previews : PreviewProvider {
    static var previews: some View {
        NavigationButtonPage()
    }
}
#endif
