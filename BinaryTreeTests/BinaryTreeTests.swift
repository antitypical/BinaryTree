//  Copyright (c) 2015 Rob Rix. All rights reserved.

final class BinaryTreeTests: XCTestCase {
	func testEmptyTreesAreEmpty() {
		XCTAssert(empty.isEmpty)
	}

	func testEmptyTreesAreNotLeaves() {
		XCTAssertFalse(empty.isLeaf)
	}

	func testEmptyTreesAreNotBranches() {
		XCTAssertFalse(empty.isBranch)
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

	func testBranchesAreNonEmpty() {
		map(branches) { XCTAssertFalse($0.isEmpty) }
	}

	func testBranchesAreNotLeaves() {
		map(branches) { XCTAssertFalse($0.isLeaf) }
	}


	func testEmptyIsEqualToEmpty() {
		XCTAssert(empty == empty)
	}

	func testBranchesAreEqualToThemselves() {
		map(Zip2(branches, branches)) { b1, b2 in XCTAssert(b1 == b2) }
	}

	func testBranchesAreNotEqualToBranchesWithDifferentStructure() {
		map(Zip2(branches, PermutationGenerator(elements: branches, indices: [2, 0, 1]))) { b1, b2 in XCTAssert(b1 != b2)}
	}
}


// MARK: - Fixtures

private let empty: BinaryTree<Int> = nil

private let leaf = BinaryTree(0)

private let branches: [BinaryTree<Int>] = [
	BinaryTree(leaf, 0, nil),
	BinaryTree(nil, 0, leaf),
	BinaryTree(leaf, 0, leaf),
]


// MARK: - Imports

import BinaryTree
import XCTest
