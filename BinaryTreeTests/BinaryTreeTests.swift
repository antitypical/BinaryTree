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


	func testBranchesAreBranches() {
		map(branches) { XCTAssert($0.isBranch) }
	}
}


// MARK: - Fixtures

private let leaf = BinaryTree(0)

private let branches: [BinaryTree<Int>] = [
	BinaryTree(leaf, 0, nil),
	BinaryTree(nil, 0, leaf),
	BinaryTree(leaf, 0, leaf),
]


// MARK: - Imports

import BinaryTree
import XCTest
