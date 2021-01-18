//
//  View+Ext.swift
//  Example
//
//

import Foundation
import SwiftUI

extension View {
    static var name: String {
        return String(describing: self)
    }
}
