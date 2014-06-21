


class BinaryTree2 {
    var data: Int?
    var left: BinaryTree2?
    var right: BinaryTree2?
    
    init (n: Int) {
        self.data = n
    }
    
    func insert (n: Int) {
        switch(self.data, self.left, self.right) {
        case let (.None, _, _):
            self.data = n
        case let (data, .Some(l), _) where data < n:
            l.insert(n)
        case let (data, .None, _) where data < n:
            self.left = BinaryTree2(n:n)
        case let (data, _, .Some(r)) where data >= n:
            r.insert(n)
        case let (data, _, .None) where data >= n:
            self.right = BinaryTree2(n:n)
        }
    }
}
