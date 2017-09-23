//
//  StringBuffer.swift
//  StringBuffer
//
//  Created by Bernardo Breder on 06/01/17.
//
//

import Foundation

#if SWIFT_PACKAGE
#endif

public class StringBuffer {
    
    public private(set) var string: String = ""
    
    internal var tabs: Int = 0
    
    public init() {
    }
    
    public var count: Int {
        return string.characters.count
    }
    
    public var data: Data? {
        return string.data(using: .utf8)
    }
    
    @discardableResult
    public func incTab(count: Int = 1) -> Self {
        tabs += count
        return self
    }
    
    @discardableResult
    public func decTab(count: Int = 1) -> Self {
        tabs -= count
        return self
    }
    
    @discardableResult
    public func write(_ string: String) -> Self{
        writeTabs()
        self.string += string
        return self
    }
    
    @discardableResult
    public func write(_ strings: String...) -> Self{
        writeTabs()
        for item in strings {
            self.string += item
        }
        return self
    }
    
    @discardableResult
    public func write(_ int: Int) -> Self{
        writeTabs()
        self.string += String(int)
        return self
    }
    
    @discardableResult
    public func write(_ float: Float) -> Self{
        writeTabs()
        self.string += String(float)
        return self
    }
    
    @discardableResult
    public func write(_ double: Double) -> Self{
        writeTabs()
        self.string += String(double)
        return self
    }
    
    @discardableResult
    public func write(_ bool: Bool) -> Self{
        writeTabs()
        self.string += bool ? "true" : "false"
        return self
    }
    
    @discardableResult
    public func write(_ string: CustomStringConvertible) -> Self{
        writeTabs()
        self.string += string.description
        return self
    }
    
    @discardableResult
    public func line() -> Self {
        self.string += "\n"
        return self
    }
    
    internal func writeTabs() {
        if tabs > 0 {
            let chars = string.characters
            if chars.isEmpty || chars.last == "\n" {
                for _ in 0 ..< tabs {
                    self.string += "\t"
                }
            }
        }
    }
    
}

