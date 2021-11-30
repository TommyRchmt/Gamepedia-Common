//
//  Bundle+Ext.swift
//  Common
//
//  Created by AMARBANK on 01/12/21.
//

extension Bundle {
    private class ClassForBundle {}

    static func frameworkBundle() -> Bundle {
        let bundleName = "Common"
        let bundlePath = Bundle(for: ClassForBundle.self)
            .path(forResource: bundleName, ofType: "bundle")
        return bundlePath != nil ? Bundle(path: bundlePath!)! : Bundle.main
    }
}
