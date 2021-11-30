//
//  String+Localization.swift
//  Common
//
//  Created by Tommy Rachmat on 29/11/21.
//

extension String {
    public func localized(withComment comment: String = "") -> String {
        return NSLocalizedString(self, bundle: Bundle.frameworkBundle(), comment: comment)
    }
}
