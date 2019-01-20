//
//  URLExtension.swift
//  TinyExtensionFramework
//
//  Created by Galvin on 2019/1/20.
//  Copyright © 2019 @GalvinLi. All rights reserved.
//

import Foundation

public extension URL {
    init(staticString: StaticString) {
        guard let url = URL(string: "\(staticString)") else {
            preconditionFailure("Invalid static URL string: \(staticString)")
        }
        self = url
    }
}

extension URL: ExpressibleByStringLiteral {
    public init(stringLiteral value: StaticString) {
        self = URL(staticString: value)
    }
}
