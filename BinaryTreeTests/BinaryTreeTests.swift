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
		XCTAssert(leaf.isLeaf)
	}

	func testLeavesAreNonEmpty() {
		XCTAssertFalse(leaf.isEmpty)
	}

	func testLeavesAreNotBranches() {
		XCTAssertFalse(leaf.isBranch)
	}


	let branches: [BinaryTree<Int>] = [
		BinaryTree(BinaryTree(0), 0, nil),
		BinaryTree(nil, 0, BinaryTree(0)),
		BinaryTree(BinaryTree(0), 0, BinaryTree(0)),
	]

	func testBranchesAreBranches() {
		map(branches) { XCTAssert($0.isBranch) }
	}
}


// MARK: - Fixtures

private let leaf = BinaryTree(0)


import BinaryTree
import XCTest
