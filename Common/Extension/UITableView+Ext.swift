//
//  UITableView+Ext.swift
//  Gamepedia
//
//  Created by Tommy Rachmat on 19/11/21.
//

import Foundation
import UIKit

public extension UITableView {
    func setEmptyMessage(_ message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text = message
        messageLabel.textColor = #colorLiteral(red: 0.2, green: 0.2196078431, blue: 0.3843137255, alpha: 1)
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
        messageLabel.font = UIFont(name: "Nunito", size: 15)
        messageLabel.sizeToFit()
        self.backgroundView = messageLabel
    }

    func restore() {
        self.backgroundView = nil
    }
}
