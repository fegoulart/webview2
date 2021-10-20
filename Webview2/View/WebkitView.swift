//
//  Second.swift
//  Webview2
//
//  Created by Fernando Goulart on 19/10/21.
//

import UIKit
import WebKit

final class WebKitView: WKWebView {

    override init(frame: CGRect = .zero, configuration: WKWebViewConfiguration) {
        super.init(frame: frame, configuration: configuration)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}
