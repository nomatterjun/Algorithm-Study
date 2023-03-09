// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 # Stack Challenges
 
 ## #1. Reverse an Array
 
 Create a function that prints the contents of an array in reversed order.
 */

let array: [Int] = [1, 2, 3, 4, 5]

// Your code here

struct Stack<Element> {

  var storage: [Element] = []

  public init() { }

  public init(_ elements: [Element]) {
    self.storage = elements
  }

  mutating func push(_ element: Element) {
    self.storage.append(element)
  }

  @discardableResult
  mutating func pop() -> Element? {
    self.storage.popLast()
  }

  func peek() -> Element? {
    self.storage.last
  }

  var isEmpty: Bool {
    self.peek() == nil
  }
}

func printInReverse<T>(_ array: [T]) {
  var stack = Stack<T>(array)

  while !stack.isEmpty {
    print(stack.pop()!)
  }
}

 printInReverse(array)
//: [Next Challenge](@next)
