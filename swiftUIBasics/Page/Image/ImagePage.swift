//
//  ImagePage.swift
//  Example
//
//

import SwiftUI

struct ImagePage : View {
    
    let range = 1..<6
    
    var body: some View {
        VStack {
            ForEach(range) { index in
                Image("icon")
                    .resizable()
                    .frame(width: CGFloat(30 * index),
                           height: CGFloat(30 * index),
                           alignment: .center)
                    .onTapGesture {
                        print("Tap \(index)")
                }
            }
        }.navigationBarTitle(Text("Image"))
    }
}

#if DEBUG
struct ImagePage_Previews : PreviewProvider {
    static var previews: some View {
        ImagePage()
    }
}
#endif
