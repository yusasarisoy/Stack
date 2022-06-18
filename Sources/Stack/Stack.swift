//
//  Stack.swift
//  Stack
//
//  Created by Yuşa on 18.06.2022.
//

struct Stack<Element: Equatable>: Equatable {
  /// Holds the stack data.
  private var storage: [Element] = []
  
  init() { }
  
  /// Custom initializer for the **Stack**.
  /// - Parameter elements: **Stack** elements to be added.
  init(_ elements: [Element]) {
    storage = elements
  }
  
  /// Shows the last element of the stack if it exists.
  /// - Returns: The last element of the stack or **nil** if the stack is empty.
  func peek() -> Element? {
    storage.last
  }
  
  /// Checks whether the stack is empty.
  /// - Returns: **true** or **false** based on the stack content.
  func isEmpty() -> Bool {
    peek() == nil // storage.isEmpty
  }
  
  /// Provides to add a new element to the stack.
  /// - Parameter element: The new element about to add.
  mutating func push(_ element: Element) {
    storage.append(element)
  }
  
  /// Provides to remove the last element of the stack if it exists.
  /// - Returns: The last element of the stack or **nil** if the stack is empty.
  @discardableResult
  mutating func pop() -> Element? {
    storage.popLast()
  }
}

extension Stack: CustomStringConvertible {
  var description: String {
    storage.map { "\($0)" }.joined(separator: " ")
  }
}

extension Stack: ExpressibleByArrayLiteral {
  init(arrayLiteral elements: Element...) {
    storage = elements
  }
}
