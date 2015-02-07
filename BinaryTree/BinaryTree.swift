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
		self = Branch(Box(nil), Box(value), Box(nil))
	}

	/// Constructs a branch.
	public init(_ left: BinaryTree, _ value: T, _ right: BinaryTree) {
		self = Branch(Box(left), Box(value), Box(right))
	}


	// MARK: NilLiteralConvertible

	public init(nilLiteral: ()) {
		self.init()
	}


	case Branch(Box<BinaryTree>, Box<T>, Box<BinaryTree>)
	case Nil
}


import Box
