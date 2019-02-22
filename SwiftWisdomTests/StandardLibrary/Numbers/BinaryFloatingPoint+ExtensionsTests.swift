//
//  BinaryFloatingPointTests.swift
//  SwiftWisdom
//
//  Created by Stephen Wong on 5/1/16.
//  Copyright © 2016 Intrepid. All rights reserved.
//

import XCTest
import SwiftWisdom

class BinaryFloatingPointTests: XCTestCase {

    func testRoundingDoubles() {
        let unroundedDoubles = [.pi, 5.0156, 10.014, 9999.99499]
        let roundedToOneDecimalPlaces = [3.1, 5.0, 10.0, 10000.0]
        let roundedToTwoDecimalPlaces = [3.14, 5.02, 10.01, 9999.99]
        let roundedToFiveDecimalPlaces = [3.14159, 5.0156, 10.014, 9999.99499]

        for (index, unroundedDouble) in unroundedDoubles.enumerated() {
            XCTAssertEqual(unroundedDouble.ip_rounded(toDecimalPlaces: 1), roundedToOneDecimalPlaces[index])
            XCTAssertEqual(unroundedDouble.ip_rounded(toDecimalPlaces: 2), roundedToTwoDecimalPlaces[index])
            XCTAssertEqual(unroundedDouble.ip_rounded(toDecimalPlaces: 5), roundedToFiveDecimalPlaces[index])
        }
    }

    func testRoundingFloats() {
        let unroundedFloats: [Float] = [.pi, 5.0156, 10.014, 9999.99499]
        let roundedToOneDecimalPlaces: [Float] = [3.1, 5.0, 10.0, 10000.0]
        let roundedToTwoDecimalPlaces: [Float] = [3.14, 5.02, 10.01, 9999.99]
        let roundedToFiveDecimalPlaces: [Float] = [3.14159, 5.0156, 10.014, 9999.99499]

        for (index, unroundedDouble) in unroundedFloats.enumerated() {
            XCTAssertEqual(unroundedDouble.ip_rounded(toDecimalPlaces: 1), roundedToOneDecimalPlaces[index])
            XCTAssertEqual(unroundedDouble.ip_rounded(toDecimalPlaces: 2), roundedToTwoDecimalPlaces[index], accuracy: 0.01)
            XCTAssertEqual(unroundedDouble.ip_rounded(toDecimalPlaces: 5), roundedToFiveDecimalPlaces[index])
        }
    }

    func testRoundingCGFloats() {
        let unroundedFloats: [CGFloat] = [.pi, 5.0156, 10.014, 9999.99499]
        let roundedToOneDecimalPlaces: [CGFloat] = [3.1, 5.0, 10.0, 10000.0]
        let roundedToTwoDecimalPlaces: [CGFloat] = [3.14, 5.02, 10.01, 9999.99]
        let roundedToFiveDecimalPlaces: [CGFloat] = [3.14159, 5.0156, 10.014, 9999.99499]

        for (index, unroundedDouble) in unroundedFloats.enumerated() {
            XCTAssertEqual(unroundedDouble.ip_rounded(toDecimalPlaces: 1), roundedToOneDecimalPlaces[index])
            XCTAssertEqual(unroundedDouble.ip_rounded(toDecimalPlaces: 2), roundedToTwoDecimalPlaces[index])
            XCTAssertEqual(unroundedDouble.ip_rounded(toDecimalPlaces: 5), roundedToFiveDecimalPlaces[index])
        }
    }

    func testRoundInPlace() {
        // Double
        var pi_double: Double = .pi
        pi_double.ip_round(toDecimalPlaces: 1)
        XCTAssertEqual(pi_double, 3.1)
        pi_double = .pi // Reset
        pi_double.ip_round(toDecimalPlaces: 2)
        XCTAssertEqual(pi_double, 3.14)
        pi_double = .pi // Reset
        pi_double.ip_round(toDecimalPlaces: 5)
        XCTAssertEqual(pi_double, 3.14159)

        // Float
        var pi_float: Float = .pi
        pi_float.ip_round(toDecimalPlaces: 1)
        XCTAssertEqual(pi_float, 3.1)
        pi_float = .pi // Reset
        pi_float.ip_round(toDecimalPlaces: 2)
        XCTAssertEqual(pi_float, 3.14)
        pi_float = .pi // Reset
        pi_float.ip_round(toDecimalPlaces: 5)
        XCTAssertEqual(pi_float, 3.14159)

        // CGFloat
        var pi_cgfloat: CGFloat = .pi
        pi_cgfloat.ip_round(toDecimalPlaces: 1)
        XCTAssertEqual(pi_cgfloat, 3.1)
        pi_cgfloat = .pi // Reset
        pi_cgfloat.ip_round(toDecimalPlaces: 2)
        XCTAssertEqual(pi_cgfloat, 3.14)
        pi_cgfloat = .pi // Reset
        pi_cgfloat.ip_round(toDecimalPlaces: 5)
        XCTAssertEqual(pi_cgfloat, 3.14159)
    }
}
