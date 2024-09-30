// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct TablerIcons {

}

#if canImport(UIKit)
import UIKit
public extension UIImage {
    convenience init?(tablerId: String) {
        self.init(named: tablerId, in: Bundle.module, compatibleWith: nil)
    }
}
#endif

#if canImport(AppKit)
import AppKit
public extension NSImage {
    static func image(tablerId: String) -> NSImage? {
        Bundle.module.image(forResource: tablerId)
    }
}
#endif
