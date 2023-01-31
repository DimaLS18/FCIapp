//
//  WebView.swift
//  fcInterApps
//
//  Created by Dima Kovrigin on 26.01.2023.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url:URL

    func makeUIView(context: Context) -> some UIView {
let webView = WKWebView()
        let request = URLRequest(url: url)
        webView.load(request)
        return webView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
}
