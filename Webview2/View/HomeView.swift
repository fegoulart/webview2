//
//  HomeView.swift
//  Webview2
//
//  Created by Fernando Goulart on 19/10/21.
//

import UIKit

final class HomeView: UIView {

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    private func setupView() {
        self.backgroundColor = .white
    }

}
