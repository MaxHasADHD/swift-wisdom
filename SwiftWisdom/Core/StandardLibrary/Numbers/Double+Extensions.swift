//
//  Double+Extensions.swift
//  SwiftWisdom
//
//  Created by Litteral, Maximilian on 2/22/19.
//  Copyright © 2019 Intrepid. All rights reserved.
//

import Foundation

extension Double {
    @available(*, unavailable, renamed: "ip_rounded(toDecimalPlaces:)")
    public func ip_round(toDecimalPlaces decimalPlaces: Int) -> Double {
        let decimalShiftBase10 = pow(10.0, Double(decimalPlaces))
        let roundedNumber = (self * decimalShiftBase10).rounded()
        let shiftDecimalPlaces = roundedNumber / decimalShiftBase10
        return shiftDecimalPlaces
    }
}
