//
//  MiddleView.swift
//  享拼车
//
//  Created by Rich on 15-4-29.
//  Copyright (c) 2015年 enjoyTech. All rights reserved.
//

import UIKit

class MiddleView: UIView {

    var middleViewStatus : String!
    var plusBtn: Hexagon!
    
   override init(frame: CGRect) {
        super.init(frame: frame)
    
    self.backgroundColor = UIColor.whiteColor()
    plusBtn = Hexagon(frame: CGRectMake(self.bounds.midX-30, self.bounds.midY - 30, 60, 60),content: UIImage(named: "ic_plus.png")!)
    plusBtn.backgroundColor = UIColor.clearColor()
    var plusTip = UILabel(frame: CGRectMake(self.bounds.midX-30, self.bounds.midY + 35, self.bounds.width * 1/3, self.bounds.height * 1/10))
    plusTip.text = "发布拼车"
    plusTip.font = UIFont.systemFontOfSize(15.0)
    plusTip.textColor = UIColor.blackColor()
    self.addSubview(plusTip)
    self.addSubview(plusBtn)
    
    }
    

   required init(coder aDecoder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
   }
    
    
}
