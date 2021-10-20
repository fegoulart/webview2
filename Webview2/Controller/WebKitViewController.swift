//
//  SecondViewController.swift
//  Webview2
//
//  Created by Fernando Goulart on 19/10/21.
//

import UIKit
import WebKit

class WebKitViewController: UIViewController {

    private let stringURL: String
    let screen = WebKitView()

    init(url: String) {
        self.stringURL = url
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        self.stringURL = ""
        super.init(coder: coder)
    }

    override func loadView() {
        view = self.screen
    }

    override func viewDidLoad() {
        self.screen.load(URLRequest(url: URL(string: self.stringURL)!))
    }
}

extension WebKitViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("WEBVIEW - didCommit")
    }

    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("WEBVEW - didStartProvisionalNavigation")
    }
}
