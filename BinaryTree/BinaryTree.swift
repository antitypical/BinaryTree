//  Copyright (c) 2015 Rob Rix. All rights reserved.

enum BinaryTree<T> {
	case Leaf(Box<T>)
	case Branch(Box<BinaryTree>, Box<BinaryTree>)
}


import Box
