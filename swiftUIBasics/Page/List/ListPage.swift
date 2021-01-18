//
//  ListPage.swift
//  Example
//
//

import SwiftUI

struct ListPage : View {
    var body: some View {
        List(0..<30) { item in
            Text("Hello World !")
        }.navigationBarTitle(Text("List"), displayMode: .large)
    }
}

#if DEBUG
struct ListPage_Previews : PreviewProvider {
    static var previews: some View {
        ListPage()
    }
}
#endif
