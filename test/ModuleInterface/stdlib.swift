// RUN: %target-swift-frontend -emit-interface-path - -emit-module -o /dev/null -parse-stdlib %s | %FileCheck %s

// CHECK-NOT: import Builtin

// CHECK: func test() {
// CHECK-NEXT: Builtin.sizeof
// CHECK-NEXT: {{^}$}}
@inlinable public func test() {
  Builtin.sizeof(Builtin.Int8.self)
}
