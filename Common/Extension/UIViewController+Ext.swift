//
//  UIViewController+Ext.swift
//  Gamepedia
//
//  Created by Tommy Rachmat on 03/11/21.
//

import Foundation
import UIKit

// MARK: UIViewController
private var activityView: UIView?
public extension UIViewController {
    func showLoading() {
        activityView = UIView(frame: self.view.bounds)
        activityView?.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let activityIndicator = UIActivityIndicatorView(style: .medium)
        activityIndicator.center = activityView!.center
        activityIndicator.startAnimating()
        activityView?.addSubview(activityIndicator)
        self.view.addSubview(activityView!)
    }

    func removeLoading() {
        activityView?.removeFromSuperview()
        activityView = nil
    }

    func configureNavigationBar(largeTitleColor: UIColor,
                                backgroundColor: UIColor,
                                tintColor: UIColor,
                                title: String,
                                preferredLargeTitle: Bool) {
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        navigationBarAppearance.largeTitleTextAttributes = [.foregroundColor: largeTitleColor]
        navigationBarAppearance.titleTextAttributes = [.foregroundColor: largeTitleColor]
        navigationBarAppearance.backgroundColor = backgroundColor

        navigationController?.navigationBar.standardAppearance = navigationBarAppearance
        navigationController?.navigationBar.compactAppearance = navigationBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearance
        navigationController?.navigationBar.prefersLargeTitles = preferredLargeTitle
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.tintColor = tintColor
        navigationItem.title = title
    }
}
