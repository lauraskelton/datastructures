// Playground - noun: a place where people can play

class LinkedList {
    var head : LinkedListNode?
    
    func search(item: String) -> LinkedListNode? {
        if head {
            return head!.search(item)
        } else {
            return nil
        }
    }
    func add(item: String) {
        if head {
            head!.add(item)
        } else {
            head = LinkedListNode(item)
        }
    }
    func size() -> Int {
        if head {
            return head!.size()
        } else {
            return 0
        }
    }
}

class LinkedListNode {
    var item: String
    var next: LinkedListNode?
    
    init(_ contents: String) {
        self.item = contents
    }
    func add(itemToAdd: String) {
        if let nextNode = self.next {
            nextNode.add(itemToAdd)
        } else {
            self.next = LinkedListNode(itemToAdd)
        }
    }
    func cons(itemToAdd: String) -> LinkedListNode {
        var oldHead = LinkedListNode(self.item)
        self.item = itemToAdd
        self.next = oldHead
        return self
    }
    func search(itemToFind: String) -> LinkedListNode? {
        if self.item == itemToFind {
            return self
        } else if let nextNode = self.next {
            return nextNode.search(itemToFind)
        } else {
            return nil
        }
    }
    func size() -> Int {
        if let nextNode = self.next {
            return 1 + nextNode.size()
        } else {
            return 1
        }
    }
}
