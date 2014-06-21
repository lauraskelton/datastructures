// Playground - noun: a place where people can play

class BinaryTree {
    
    var data: Int?
    
    var left: BinaryTree?
    var right: BinaryTree?
    
    init() {
    }
    
    func insert(d: Int) {
        
        if !self.data {
            
        } else {
            
            if d < self.data {
                if let l = self.left {
                    l.insert(d)
                } else {
                    var tree = BinaryTree()
                    tree.data = d
                    self.left = tree
                }
            } else {
                if let r = self.right {
                    r.insert(d)
                } else {
                    var tree = BinaryTree()
                    tree.data = d
                    self.right = tree
                }
            }
        }
    }
}


let tree = BinaryTree()
tree.insert(5)
tree.insert(2)
tree.insert(8)
tree.insert(11)