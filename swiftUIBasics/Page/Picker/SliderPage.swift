//
//  SliderPage.swift
//  Example
//
//

import SwiftUI
import Combine

struct SliderPage : View {
    
    @State var rating = 0.5

    var body: some View {
        VStack {
            Text("Slider Value: \(self.rating)")
            Slider(value: $rating)
                .padding(30)
            
        }.navigationBarTitle(Text("Slider"))
    }
}



#if DEBUG
struct SliderPage_Previews : PreviewProvider {
    static var previews: some View {
        SliderPage()
    }
}
#endif
