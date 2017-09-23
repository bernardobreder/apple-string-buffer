//
//  StringBuffer.swift
//  StringBuffer
//
//  Created by Bernardo Breder on 06/01/17.
//
//

import XCTest
@testable import StringBuffer

class StringBufferTests: XCTestCase {
    
    func testWrite() throws {
        let buffer = StringBuffer()
        buffer.write("a").write("b").write("c", "d").write(1)
        XCTAssertEqual("abcd1", buffer.string)
    }
    
    func testTab() throws {
        let buffer = StringBuffer()
        buffer.incTab().write("a").line().incTab().write("b").line().decTab().write("c", "d").line().decTab().write(1)
        XCTAssertEqual("\ta\n\t\tb\n\tcd\n1", buffer.string)
    }
    
}

