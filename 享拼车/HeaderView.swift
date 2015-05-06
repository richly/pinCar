//
//  HeaderView.swift
//  享拼车
//
//  Created by Rich on 15-4-27.
//  Copyright (c) 2015年 enjoyTech. All rights reserved.
//

import UIKit

class HeaderView: UIView {
    
    var menuBtn : UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = YellowGreen
        /*1.hanburButton---------------------------
        */
        menuBtn = UIButton(frame: CGRectMake(0, self.bounds.height * 1/20, 64, 64))
        menuBtn.setImage(UIImage(named: "menu.png"), forState: UIControlState.Normal)
        self.addSubview(menuBtn)
        /*2.userheader--------------------------------
            (X: 7/32 - 25/32 Y: 7/32 - 25/32)
        */
        let userWid = frame.width * 9/16
        let userHei = frame.height * 9/16
        var userHeader: Hexagon = Hexagon(frame: CGRectMake(self.center.x - 1/2 * userWid, self.center.y - 1/2 * userHei, userWid, userHei),content: UIImage(named:"free-flat-halloween-icons-06")!)
        userHeader.backgroundColor = UIColor.clearColor()
         self.addSubview(userHeader)
//        println(userHeader.frame)
        
        /*3.carheader--------------------------------
            (X:  Y: )
        */
        
//        var carHeader : Hexagon = Hexagon(frame: CGRectMake(<#x: CGFloat#>, <#y: CGFloat#>, <#width: CGFloat#>, <#height: CGFloat#>))
//        carHeader.backgroundColor = UIColor.clearColor()
       
        /*4.itemBar----------------------------------
            (X: 0-1 Y: 27/32 - 1)
        */
        let itemWid = frame.width
        let itemHei = frame.height * 5/32
        var itemBar = UIView(frame: CGRectMake(self.bounds.minX, self.bounds.maxY - itemHei, itemWid, itemHei))
        itemBar.backgroundColor = DarkGreen
            /*4.1.1carpooltimeLabel*/
        var ctl = UILabel(frame: CGRectMake(itemBar.bounds.minX + itemBar.bounds.width * 2/10, itemBar.bounds.minY + itemBar.bounds.height * 2/15, itemBar.bounds.width * 4/20, itemBar.bounds.height * 1/5))
        ctl.text = "拼车次数"
        ctl.textColor = UIColor.whiteColor()
        ctl.font = UIFont.systemFontOfSize(14.0)
        itemBar.addSubview(ctl)
            /*4.1.2carpooltimeresultLabel*/
        var ctrl = UILabel(frame: CGRectMake(itemBar.bounds.minX + itemBar.bounds.width * 2/10, itemBar.bounds.minY + itemBar.bounds.height * 7/15, itemBar.bounds.width * 4/20, itemBar.bounds.height * 1/3))
        ctrl.text = "6667"
        ctrl.textColor = UIColor.whiteColor()
        ctrl.font = UIFont.systemFontOfSize(25.0)
        itemBar.addSubview(ctrl)
            /*4.2.1praiseRateLabel*/
        var prl = UILabel(frame: CGRectMake(itemBar.bounds.minX + itemBar.bounds.width * 9/20, itemBar.bounds.minY + itemBar.bounds.height * 2/15, itemBar.bounds.width * 4/20, itemBar.bounds.height * 1/5))
        prl.text = "成功率"
        prl.textColor = UIColor.whiteColor()
        prl.font = UIFont.systemFontOfSize(14.0)
        itemBar.addSubview(prl)
            /*4.2.2praiseRateResultLabel*/
        var prrl = UILabel(frame: CGRectMake(itemBar.bounds.minX + itemBar.bounds.width * 9/20, itemBar.bounds.minY + itemBar.bounds.height * 7/15, itemBar.bounds.width * 4/20, itemBar.bounds.height * 1/3))
        prrl.text = "98%"
        prrl.textColor = UIColor.whiteColor()
        prrl.font = UIFont.systemFontOfSize(25.0)
        itemBar.addSubview(prrl)
        self.addSubview(itemBar)
            /*4.3.1balanceLabel*/
        var bl = UILabel(frame: CGRectMake(itemBar.bounds.minX + itemBar.bounds.width * 67/100, itemBar.bounds.minY + itemBar.bounds.height * 2/15, itemBar.bounds.width * 4/20, itemBar.bounds.height * 1/5))
        bl.text = "我的余额"
        bl.textColor = UIColor.whiteColor()
        bl.font = UIFont.systemFontOfSize(14.0)
        itemBar.addSubview(bl)
            /*4.3.2balanceResultLabel*/
        var brl = UILabel(frame: CGRectMake(itemBar.bounds.minX + itemBar.bounds.width * 67/100, itemBar.bounds.minY + itemBar.bounds.height * 7/15, itemBar.bounds.width * 4/20, itemBar.bounds.height * 1/3))
        brl.text = "122.0"
        brl.textColor = UIColor.whiteColor()
        brl.font = UIFont.systemFontOfSize(25.0)
        itemBar.addSubview(brl)
        
        self.addSubview(itemBar)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
