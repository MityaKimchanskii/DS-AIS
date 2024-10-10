

extension QueueArray {
    func reversed() -> QueueArray {
        var queue = self
        var stack = Stack<T>()
        while let element = queue.dequeue() {
            stack.push(element)
        }
        while let element = stack.pop() {
            queue.enqueue(element)
        }
        return queue
    }
}

var queue = QueueArray<String>()
queue.enqueue("1")
queue.enqueue("35")
queue.enqueue("31")
queue.enqueue("25")
queue.enqueue("77")

print("before: \(queue)")
print("after: \(queue.reversed())")
