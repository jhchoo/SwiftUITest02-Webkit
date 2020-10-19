//
//  MyWebview.swift
//  SwiftUITest02-Webkit
//
//  Created by jae hwan choo on 2020/10/19.
//

import SwiftUI
import WebKit

// Uikit의 uiview를 사용할 수 있다록 한다.
struct MyWebview: UIViewRepresentable {

    var urlToLoad: String
        
    // ui view 만들기
    func makeUIView(context: Context) -> some UIView {
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        // 인스턴스 생성
        let webview = WKWebView()
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    // 업데이트  ui view
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://www.google.com")
    }
}
