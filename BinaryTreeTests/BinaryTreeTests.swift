//  Copyright (c) 2015 Rob Rix. All rights reserved.

final class BinaryTreeTests: XCTestCase {
	func testEmptyTreesAreNotLeaves() {
		XCTAssertFalse(BinaryTree<Int>().isLeaf)
	}

	func testLeavesAreNonEmpty() {
		XCTAssertFalse(BinaryTree(0).isEmpty)
	}
}


import BinaryTree
import XCTest
