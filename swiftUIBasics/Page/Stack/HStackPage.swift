//
//  HStackPage.swift
//  Example
//
//

import SwiftUI

struct HStackPage : View {
    var body: some View {
        HStack {
            Text("made in Colorado.")
            Divider() // Just add a line.
            Text("Using swiftUI.")
        }
    }
}

#if DEBUG
struct HStackPage_Previews : PreviewProvider {
    static var previews: some View {
        HStackPage()
    }
}
#endif
