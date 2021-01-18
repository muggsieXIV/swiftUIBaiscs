//
//  TogglePage.swift
//  Example
//
//

import SwiftUI
import Combine
struct TogglePage : View {
    
    @State var isOn = false
    
    var body: some View {
        HStack {
            Toggle(isOn: $isOn) {
                Text("State: \(self.isOn == true ? "On":"Off")")
            }.padding(20)
            Spacer()
        }.navigationBarTitle(Text("Toggle"))
    }
}

#if DEBUG
struct TogglePage_Previews : PreviewProvider {
    static var previews: some View {
        TogglePage()
    }
}
#endif
