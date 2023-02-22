//
//  WebView.swift
//  fcInterApps
//
//  Created by Dima Kovrigin on 26.01.2023.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {

    }
}
