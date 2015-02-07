//  Copyright (c) 2015 Rob Rix. All rights reserved.

/// A binary tree with leaves of type `T`.
public enum BinaryTree<T> {
	case Branch(Box<BinaryTree>?, Box<T>, Box<BinaryTree>?)
	case Nil
}


import Box
