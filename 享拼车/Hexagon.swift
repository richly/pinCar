//
//  Hexagon.swift
//  享拼车
//
//  Created by Rich on 15-4-27.
//  Copyright (c) 2015年 enjoyTech. All rights reserved.
//

import UIKit
import AVFoundation

class Hexagon: UIControl {
    
    var imageLayer: CALayer!
    var maskLayer: CALayer!
    var contentImage: UIImage!{
        didSet{
        setNeedsDisplay()
        }
    }
    var maskImage: UIImage!
    
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        var context : CGContextRef = UIGraphicsGetCurrentContext()
        var drawRect = CGRectMake(rect.origin.x, rect.origin.y,rect.size.width, rect.size.height)
        CGContextClearRect(context, rect)
        CGContextSetRGBFillColor(context, 1,1,1, 0)
        CGContextFillRect(context, drawRect)
        self.maskImage = UIImage(named: "hexagon")
        //创建遮罩Layer
        self.maskLayer = CALayer(layer: layer)
        self.maskLayer.frame = self.bounds
        self.maskLayer.contents = self.maskImage.CGImage
        //        println(self.maskLayer.frame)
        //创建被遮罩Layer
        self.imageLayer = CALayer(layer: layer)
        self.imageLayer.frame = bounds
        self.imageLayer.contents = self.contentImage.CGImage
        //        println(self.imageLayer.frame)
        
        //为被遮罩Layer添加遮罩Layer
        self.imageLayer.mask = self.maskLayer
        self.layer.addSublayer(self.imageLayer)
        CGContextFillRect(context, rect)
        UIColor.whiteColor().setFill()
        CGContextFillPath(context)
        
    }
    init(frame: CGRect,content: UIImage) {
        super.init(frame: frame)
        //处理图片
        self.contentImage = content
        self.maskImage = UIImage(named: "hexagon")
        //创建遮罩Layer
        self.maskLayer = CALayer(layer: layer)
        self.maskLayer.frame = self.bounds
        self.maskLayer.contents = self.maskImage.CGImage
        //        println(self.maskLayer.frame)
        //创建被遮罩Layer
        self.imageLayer = CALayer(layer: layer)
        self.imageLayer.frame = bounds
        self.imageLayer.contents = self.contentImage.CGImage
        //        println(self.imageLayer.frame)
        
        //为被遮罩Layer添加遮罩Layer
        self.imageLayer.mask = self.maskLayer
        
        
        self.layer.addSublayer(self.imageLayer)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
