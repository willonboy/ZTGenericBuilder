//
// ZTGenericBuilder
//
// GitHub Repo and Documentation: https://github.com/willonboy/ZTGenericBuilder
//
// Copyright © 2024 Trojan Zhang. All rights reserved.
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
//


import Foundation

#if compiler(>=5.4)
@resultBuilder
#else
@_functionBuilder
#endif
public struct ZTGenericBuilder<T> {
    public static func buildBlock(_ element: T) -> T {
        element
    }
    
    public static func buildBlock(_ elements: T...) -> [T] {
        elements
    }
    
    public static func buildBlock(_ elementArrays: [T]...) -> [T] {
        elementArrays.flatMap { $0 }
    }
    
    public static func buildBlock(_ elements: Any...) -> [T] {
        var arr = [T]()
        for v in elements {
            if let element = v as? T {
                arr.append(element)
                continue
            }
            if let elementArray = v as? Array<T> {
                arr.append(contentsOf: elementArray.compactMap { $0 })
                continue
            }
#if DEBUG
            assert(false)
#endif
        }
        return arr
    }
    
#if compiler(>=5.4)
    public static func buildOptional(_ elements: [T]?) -> [T] {
        return elements ?? []
    }
#else
    public static func buildIf(_ elements: [T]?) -> [T] {
        return elements ?? []
    }
#endif
    
    public static func buildEither(first element: T) -> T {
        element
    }
    
    public static func buildEither(first elements: [T]) -> [T] {
        elements
    }
    
    public static func buildEither(second element: T) -> T {
        element
    }
    
    public static func buildEither(second elements: [T]) -> [T] {
        elements
    }
    
    public static func buildArray(_ elements: [T]) -> [T] {
        elements
    }
    
    public static func buildArray(_ elementArrays: [[T]]) -> [T] {
        elementArrays.flatMap { $0 }
    }
    
    public static func buildLimitedAvailability(_ element: T) -> [T] {
        [element]
    }
    
    public static func buildLimitedAvailability(_ elements: [T]) -> [T] {
        elements
    }
    
    public static func buildFinalResult(_ element: T) -> T {
        element
    }
    
    public static func buildFinalResult(_ elements: [T]) -> [T] {
        elements
    }
}
