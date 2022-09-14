//
//  UIFont+with.swift
//  SlothSpace
//
//  Created by echo on 2021/5/31.
//

import Foundation
import UIKit

extension UIFont {
    
    /// pingFangRegular 固定字体尺寸
    /// - Parameter size: 字体大小
    /// - Returns: font
    public static func pingFangRegular(size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "PingFangSC-Regular", size: size) else {
            return UIFont.systemFont(ofSize: size)
        }
        return font
    }
    
    /// pingFangMedium 固定字体尺寸
    /// - Parameter size: 字体大小
    /// - Returns: font
    public static func pingFangMedium(size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "PingFangSC-Medium", size: size) else {
            return UIFont.systemFont(ofSize: size)
        }
        return font
    }
    
    /// pingFangSemibold 固定字体尺寸
    /// - Parameter size: 字体大小
    /// - Returns: font
    public static func pingFangSemibold(size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "PingFangSC-Semibold", size: size) else {
            return UIFont.systemFont(ofSize: size)
        }
        return font
    }
}
