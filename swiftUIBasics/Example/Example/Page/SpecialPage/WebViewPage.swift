//
//  WebViewPage.swift
//  Example
//
//

import SwiftUI
import WebKit

struct WebViewPage : UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let req = URLRequest(url: URL(string: "https://www.mtnmadehky.com")!)
        uiView.load(req)
    }
}

#if DEBUG
struct WebViewPage_Previews : PreviewProvider {
    static var previews: some View {
        WebViewPage()
    }
}
#endif

