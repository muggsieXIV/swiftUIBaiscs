//
//  TabViewPage.swift
//  Example
//
//

import SwiftUI

struct TableViewPage : View {
    
    @State private var index = 0 
    let imgs = ["hot","recommend","search","tag","setting"]
    
    var body: some View {
        TabView(selection: $index) {
            ForEach(0..<imgs.count) { item in
                TabItemPage(index: item)
                    .tabItem{
                        Image(self.imgs[item])
                        Text("\(item)")
                }
                .tag(item)
            }
        }.navigationBarTitle("TabViewPage")
        
    }
}

fileprivate struct TabItemPage: View {
    
    var index: Int
    
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(Color.orange)
            VStack {
                Text("\(index)")
                    .foregroundColor(.white)
                    .font(.system(size: 100, design: .rounded))
                    .bold()
                Image("icon")
                    .resizable()
                    .frame(width: 200,height: 200)
            }
        }
    }
}


#if DEBUG
struct TableViewPage_Previews : PreviewProvider {
    static var previews: some View {
        TableViewPage()
    }
}
#endif
