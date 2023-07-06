//
//  EitherTests.swift
//
//
//  Created by Tyler Thompson on 5/9/23.
//

import XCTest
import Foundation
import ViewInspector
import SomeSPM

final class SomeTests: XCTestCase {
    
    func testSome() {
        let some = Some<String, String>.left("left")
        XCTAssertNotNil(some)
    }
}
