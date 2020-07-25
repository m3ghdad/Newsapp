//
//  WebView.swift
//  Newsapp
//
//  Created by Meghdad Abbaszadegan on 7/25/20.
//  Copyright © 2020 Meghdad Abbaszadegan. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView:UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView{
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
