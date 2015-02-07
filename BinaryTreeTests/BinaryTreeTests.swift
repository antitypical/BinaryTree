//  Copyright (c) 2015 Rob Rix. All rights reserved.

final class BinaryTreeTests: XCTestCase {
	func testEmptyTreesAreNotLeaves() {
		XCTAssertFalse(BinaryTree<Int>().isLeaf)
	}

	func testLeavesAreLeaves() {
		XCTAssert(BinaryTree(0).isLeaf)
	}

	func testLeavesAreNonEmpty() {
		XCTAssertFalse(BinaryTree(0).isEmpty)
	}

	func testLeavesAreNotBranches() {
		XCTAssertFalse(BinaryTree(0).isBranch)
	}
}


import BinaryTree
import XCTest
