//
//  StringBufferTests.swift
//  StringBuffer
//
//  Created by Bernardo Breder.
//
//

import XCTest
@testable import StringBufferTests

extension StringBufferTests {

	static var allTests : [(String, (StringBufferTests) -> () throws -> Void)] {
		return [
			("testTab", testTab),
			("testWrite", testWrite),
		]
	}

}

XCTMain([
	testCase(StringBufferTests.allTests),
])

