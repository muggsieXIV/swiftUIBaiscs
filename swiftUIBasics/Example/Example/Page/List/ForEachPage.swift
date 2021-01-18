//
//  ForEachPage.swift
//  Example
//
//

import SwiftUI

struct ForEachPage : View {
    
    let data = (0..<5)

    var body: some View {
        ForEach(data) { e in
            Text("Hello \(e)")
                .bold()
                .font(.system(size: 25, design: .monospaced))
                .padding(5)
            }
//            .border(Color.gray.gradient, width: 1,cornerRadius: 10)
        .border(Color.gray.gradient, width: 1)
        .cornerRadius(10)
            .navigationBarTitle(Text("ForEach"))
    }
}

#if DEBUG
struct ForEachPage_Previews : PreviewProvider {
    static var previews: some View {
        ForEachPage()
    }
}
#endif
