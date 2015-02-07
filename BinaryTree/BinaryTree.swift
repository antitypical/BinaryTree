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

	/// Returns the left branch of the receiver or `nil`.
	public var left: BinaryTree {
		switch self {
		case let Branch(left, _, _):
			return left.value

		case Nil:
			return nil
		}
	}

	/// Returns the right branch of the receiver or `nil`.
	public var right: BinaryTree {
		switch self {
		case let Branch(_, _, right):
			return right.value

		case Nil:
			return nil
		}
	}

	/// Returns the value of the receiver or `nil`.
	public var value: T? {
		switch self {
		case let Branch(_, value, _):
			return value.value

		case Nil:
			return nil
		}
	}


	// MARK: NilLiteralConvertible

	public init(nilLiteral: ()) {
		self.init()
	}


	case Branch(Box<BinaryTree>, Box<T>, Box<BinaryTree>)
	case Nil
}


import Box
