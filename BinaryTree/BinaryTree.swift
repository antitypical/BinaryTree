//  Copyright (c) 2015 Rob Rix. All rights reserved.

/// A binary tree with leaves of type `T`.
public enum BinaryTree<T>: NilLiteralConvertible {
	// MARK: Constructors

	/// Constructs an empty instance.
	public init() {
		self = Nil
	}

	/// Constructs a leaf.
	public init(_ value: T) {
		self.init(nil, value, nil)
	}

	/// Constructs a branch.
	public init(_ left: BinaryTree, _ value: T, _ right: BinaryTree) {
		self = Branch(Box(left), Box(value), Box(right))
	}


	// MARK: Properties

	/// Returns the left branch of the receiver, or `nil`.
	public var left: BinaryTree {
		return analysis { left, _, _ in left } ?? nil
	}

	/// Returns the right branch of the receiver, or `nil`.
	public var right: BinaryTree {
		return analysis { _, _, right in right } ?? nil
	}

	/// Returns the value of the receiver, or `nil`.
	public var value: T? {
		return analysis { _, value, _ in value }
	}

	/// Performs case analysis on the receiver.
	public func analysis<U>(f: (BinaryTree, T, BinaryTree) -> U) -> U? {
		switch self {
		case let Branch(left, value, right):
			return f(left.value, value.value, right.value)

		case Nil:
			return nil
		}
	}


	/// Returns `true` if the receiver is neither `nil` nor a branch.
	public var isLeaf: Bool {
		return analysis { left, _, right in left.isEmpty && right.isEmpty } ?? false
	}

	/// Returns `true` if the receiver has at least one branch.
	public var isBranch: Bool {
		return analysis { left, _, right in !left.isEmpty || !right.isEmpty } ?? false
	}

	/// Returns `true` if the receiver is empty.
	public var isEmpty: Bool {
		return analysis(const(false)) ?? true
	}


	// MARK: NilLiteralConvertible

	public init(nilLiteral: ()) {
		self.init()
	}


	case Branch(Box<BinaryTree>, Box<T>, Box<BinaryTree>)
	case Nil
}


/// Equality of binary trees of `Equatable` elements.
public func == <T: Equatable> (left: BinaryTree<T>, right: BinaryTree<T>) -> Bool {
	switch (left.analysis(id), right.analysis(id)) {
	case let (.Some(x1, v1, y1), .Some(x2, v2, y2)):
		return v1 == v2 && x1 == x2 && y1 == y2

	case (.None, .None):
		return true

	default:
		return false
	}
}

public func != <T: Equatable> (left: BinaryTree<T>, right: BinaryTree<T>) -> Bool {
	return !(left == right)
}


import Box
import Prelude
