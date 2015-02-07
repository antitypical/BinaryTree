//  Copyright (c) 2015 Rob Rix. All rights reserved.

/// A binary tree with leaves of type `T`.
enum BinaryTree<T> {
	case Leaf(Box<T>)
	case Branch(Box<BinaryTree>, Box<BinaryTree>)
}


import Box
