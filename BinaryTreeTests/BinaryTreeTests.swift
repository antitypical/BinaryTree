//  Copyright (c) 2015 Rob Rix. All rights reserved.

final class BinaryTreeTests: XCTestCase {
	func testEmptyTreesAreNotLeaves() {
		XCTAssertFalse(BinaryTree<Int>().isLeaf)
	}
}


import BinaryTree
import XCTest
