//  Copyright (c) 2015 Rob Rix. All rights reserved.

final class BinaryTreeTests: XCTestCase {
	func testEmptyTreesAreEmpty() {
		XCTAssert(BinaryTree<Int>().isEmpty)
	}

	func testEmptyTreesAreNotLeaves() {
		XCTAssertFalse(BinaryTree<Int>().isLeaf)
	}

	func testEmptyTreesAreNotBranches() {
		XCTAssertFalse(BinaryTree<Int>().isBranch)
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


	func testLeftBranchesAreBranches() {
		XCTAssert(BinaryTree(BinaryTree(0), 0, nil).isBranch)
	}

	func testRightBranchesAreBranches() {
		XCTAssert(BinaryTree(nil, 0, BinaryTree(0)).isBranch)
	}
}


import BinaryTree
import XCTest
