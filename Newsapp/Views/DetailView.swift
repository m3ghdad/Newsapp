//
//  DetailView.swift
//  Newsapp
//
//  Created by Meghdad Abbaszadegan on 7/25/20.
//  Copyright © 2020 Meghdad Abbaszadegan. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "http://www.google.com")
    }
}

struct WebView:UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType{
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context:Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
