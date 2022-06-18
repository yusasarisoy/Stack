//
//  StackTests.swift
//  StackTests
//
//  Created by Yuşa on 18.06.2022.
//

import XCTest
@testable import Stack

final class StackTestCase: XCTestCase {
  var stack = Stack<Int>()
  
  override func setUp() {
    super.setUp()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)
  }
  
  override func tearDown() {
    stack = []
    super.tearDown()
  }
  
  func test_push() {
    XCTAssertEqual(stack.description, "1 2 3 4")
  }
  
  func test_pop() {
    XCTAssertEqual(stack.pop(), 4)
  }
  
  func test_peek() {
    XCTAssertEqual(stack.peek(), 4)
  }
  
  func test_isEmpty() {
    XCTAssertFalse(stack.isEmpty())
  }
  
  func test_initWithArray() {
    let array = [1, 2, 3, 4]
    XCTAssertEqual(stack, Stack(array))
  }
  
  func test_arrayLiteral() {
    let stack: Stack = ["bluberry", "plain", "potato"]
    XCTAssertEqual(stack, ["bluberry", "plain", "potato"])
  }
}
