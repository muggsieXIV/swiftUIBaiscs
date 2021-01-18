//
//  ZStackPage.swift
//  Example
//
//

import SwiftUI

struct ZStackPage : View {
    var body: some View {
        ZStack {
            Text("made in Colorado.")
            Divider() // Just add a line.
            Text("With swiftUI.")
        }
    }
}

#if DEBUG
struct ZStackPage_Previews : PreviewProvider {
    static var previews: some View {
        ZStackPage()
    }
}
#endif
