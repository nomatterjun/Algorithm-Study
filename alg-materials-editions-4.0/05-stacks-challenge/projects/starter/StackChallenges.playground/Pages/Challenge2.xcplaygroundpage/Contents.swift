// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 [Previous Challenge](@previous)
 
 ## #2. Balance Parentheses
 
 Check for balanced parentheses. Given a string, check if there are `(` and `)` characters, and return `true` if the parentheses in the string are balanced.
 ```
 // 1
 h((e))llo(world)() // balanced parentheses
 // 2
 (hello world // unbalanced parentheses
 ```
 */
var testString1 = "h((e))llo(world)()"

// your code here

struct Stack<Element> {

  var storage: [Element] = []

  public init() { }

  public init(_ array: [Element]) {
    self.storage = array
  }

  mutating func push(_ element: Element) {
    self.storage.append(element)
  }

  @discardableResult
  mutating func pop() -> Element? {
    self.storage.popLast()
  }
}

func checkParentheses(_ string: String) -> Bool {
  var stack = Stack<Character>()

  for char in string {
    if char == "(" {
      stack.push(char)
    } else if char == ")" {
      if stack.pop() == nil {
        return false
      }
    }
  }
  return true
}

checkParentheses(testString1) // should be true
