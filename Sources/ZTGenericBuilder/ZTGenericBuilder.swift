//
// ZTGenericBuilder
//
// GitHub Repo and Documentation: https://github.com/willonboy/ZTGenericBuilder
//
// Copyright © 2024 Trojan Zhang. All rights reserved.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program. If not, see <https://www.gnu.org/licenses/>.
//


import Foundation

#if compiler(>=5.4)
@resultBuilder
#else
@_functionBuilder
#endif
public struct ZTGenericBuilder<T> {
    public static func buildExpression(_ element: T) -> [T] {
        return [element]
    }

    public static func buildExpression(_ elementArrays: [T]...) -> [T] {
        elementArrays.flatMap { $0 }
    }

    // public static func buildBlock(_ element: T) -> [T] {
    //     [element]
    // }
    
    // public static func buildBlock(_ elements: T...) -> [T] {
    //     elements
    // }
    
    public static func buildBlock(_ elementArrays: [T]...) -> [T] {
        elementArrays.flatMap { $0 }
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
    
    // public static func buildEither(first element: T) -> [T] {
    //     [element]
    // }
    
    public static func buildEither(first elements: [T]) -> [T] {
        elements
    }
    
    // public static func buildEither(second element: T) -> [T] {
    //     [element]
    // }
    
    public static func buildEither(second elements: [T]) -> [T] {
        elements
    }
    
    public static func buildArray(_ elements: [T]) -> [T] {
        elements
    }
    
    public static func buildArray(_ elementArrays: [[T]]) -> [T] {
        elementArrays.flatMap { $0 }
    }
    
    // public static func buildLimitedAvailability(_ element: T) -> [T] {
    //     [element]
    // }
    
    public static func buildLimitedAvailability(_ elements: [T]) -> [T] {
        elements
    }
    
    // public static func buildFinalResult(_ element: T) -> [T] {
    //     [element]
    // }
    
    public static func buildFinalResult(_ elements: [T]) -> [T] {
        elements
    }
}
