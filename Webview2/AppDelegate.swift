//
//  AppDelegate.swift
//  Webview2
//
//  Created by Fernando Goulart on 19/10/21.
//

import UIKit
import SafariServices

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {

        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = setupTabBar()
        self.window?.makeKeyAndVisible()
        return true
    }

    private func setupTabBar() -> UITabBarController {
        let tabBarController = UITabBarController()
        tabBarController.tabBar.backgroundColor = .systemGray
        tabBarController.tabBar.tintColor = .white
        tabBarController.tabBar.unselectedItemTintColor = .darkGray
        tabBarController.viewControllers = setupViewControllers()
        return tabBarController
    }

    private func setupViewControllers() -> [UIViewController] {
        return [mainViewController(), webKitViewController(), safariKitViewController()]
    }

    private func mainViewController() -> UIViewController {
        let viewController = HomeViewController()
        viewController.tabBarItem = tabBarItem(title: "home", systemIcon: "house")
        return viewController
    }

    private func webKitViewController() -> UIViewController {
        let url = "https://www.serasa.com.br/"
        let viewController = WebKitViewController(url: url)
        viewController.tabBarItem = tabBarItem(title: "webview", systemIcon: "cloud")
        return viewController
    }

    private func safariKitViewController() -> UIViewController {
        let config = SFSafariViewController.Configuration()
                config.entersReaderIfAvailable = true
        let viewController = SFSafariViewController(
            url: URL(string: "https://www.serasa.com.br/")!,
            configuration: config
        )
        viewController.tabBarItem = tabBarItem(title: "safari", systemIcon: "safari")
        return viewController
    }

    private func tabBarItem(title: String, systemIcon: String) -> UITabBarItem {
        let tabBarImage = UIImage(systemName: systemIcon)
        return UITabBarItem(title: title, image: tabBarImage, selectedImage: tabBarImage)
    }
}
