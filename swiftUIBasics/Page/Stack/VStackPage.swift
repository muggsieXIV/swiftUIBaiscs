//
//  VStackPage.swift
//  Example
//
//

import SwiftUI

struct VStackPage : View {
    var body: some View {
        VStack {
            Text("made in Colorado.")
            Divider() // Just add a line.
            Text("With swiftUI.")
        }
    }
}

#if DEBUG
struct VStackPage_Previews : PreviewProvider {
    static var previews: some View {
        VStackPage()
    }
}
#endif
