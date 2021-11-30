//
//  ViewStateConstant.swift
//  Gamepedia
//
//  Created by Tommy Rachmat on 17/11/21.
//

import Foundation

public protocol ViewState {
}

public enum UIViewState: ViewState, Equatable {
    case normal
    case loading

    public static func == (lhs: UIViewState, rhs: UIViewState) -> Bool {
        switch (lhs, rhs) {
        case (.normal, .normal):
            return true
        case (.loading, .loading):
            return true
        default:
            return false
        }
    }
}
