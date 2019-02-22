//
//  BinaryFloatingPoint+Extensions.swift
//  SwiftWisdom
//
//  Created by Stephen Wong on 5/1/16.
//  Copyright © 2016 Intrepid. All rights reserved.
//

import Foundation

extension BinaryFloatingPoint {
    /// https://codereview.stackexchange.com/questions/142748/swift-floatingpoint-rounded-to-places
    public func ip_rounded(toDecimalPlaces places: Int) -> Self {
        guard places >= 0 else { return self }
        let divisor = Self((0..<places).reduce(1.0) { (result, _) in result * 10.0 })
        return (self * divisor).rounded() / divisor
    }

    /// https://codereview.stackexchange.com/questions/142748/swift-floatingpoint-rounded-to-places
    public mutating func ip_round(toDecimalPlaces places: Int) {
        guard places >= 0 else { return }
        let divisor = Self((0..<places).reduce(1.0) { (result, _) in result * 10.0 })
        self = (self * divisor).rounded() / divisor
    }
}
