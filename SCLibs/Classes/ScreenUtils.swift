//
//  CommonConstants.swift
//  SlothSpace
//
//  Created by echo on 2021/8/11.
//
//  尺寸适配
//let sizeR = String(format: "%.0f", size * (kScreenW/375))
//sizeR.with_toCGFloat()

import Foundation

public class ScreenUtils: NSObject{
    //设计尺寸标准图
    let benchmarkDesignSize = CGSize(width: 375, height: 812)
    
    public static let shared: ScreenUtils = ScreenUtils()
    
    private override init() {
        super.init()
    }
    
    public class func hw_multiplier() -> CGFloat {
        let size = ScreenUtils.shared.benchmarkDesignSize
        if size == .zero {
            return 1.0
        }
        let min = UIScreen.main.bounds.height < UIScreen.main.bounds.width ? UIScreen.main.bounds.height : UIScreen.main.bounds.width
        return min / size.width
    }
    
    /// 当前屏幕与标准设计尺寸比例值
    /// - Parameter float: 设计图标注值
    public class func hw_handleFloat(float: CGFloat) -> CGFloat {
        let multiplier = self.hw_multiplier()
        return float * multiplier
    }
}

extension CGFloat {
    func sp() -> CGFloat {
        return self * ScreenUtils.hw_multiplier()
    }
}

extension Int {
    func sp() -> CGFloat {
        return CGFloat(self) * ScreenUtils.hw_multiplier()
    }
}
