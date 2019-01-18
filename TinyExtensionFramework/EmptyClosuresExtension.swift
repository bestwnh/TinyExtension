//
//  EmptyClosuresExtension.swift
//  TinyExtension
//
//  Created by Galvin on 2019/1/16.
//  Copyright © 2019 @GalvinLi. All rights reserved.
//

import Foundation

public struct Closure {}

public extension Closure {
    static func ignore() {}
    static func ignore(_: Any?) {}
    static func ignore(_: Any?, _: Any?) {}
    static func ignore(_: Any?, _: Any?, _: Any?) {}
    static func ignore(_: Any?, _: Any?, _: Any?, _: Any?) {}
    static func ignore(_: Any?, _: Any?, _: Any?, _: Any?, _: Any?) {}
    static func ignore(_: Any?, _: Any?, _: Any?, _: Any?, _: Any?, _: Any?) {}
    
    static func empty() -> (() -> ()) { return {} }
    static func empty() -> ((Any?) -> ()) { return { _ in } }
    static func empty() -> ((Any?, Any?) -> ()) { return { _, _ in } }
    static func empty() -> ((Any?, Any?, Any?) -> ()) { return { _, _, _ in } }
    static func empty() -> ((Any?, Any?, Any?, Any?) -> ()) { return { _, _, _, _ in } }
    static func empty() -> ((Any?, Any?, Any?, Any?, Any?) -> ()) { return { _, _, _, _, _ in } }
    static func empty() -> ((Any?, Any?, Any?, Any?, Any?, Any?) -> ()) { return { _, _, _, _, _, _ in } }
}
