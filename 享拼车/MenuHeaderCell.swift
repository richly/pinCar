//
//  MenuHeaderCell.swift
//  享拼车
//
//  Created by Rich on 15-4-30.
//  Copyright (c) 2015年 enjoyTech. All rights reserved.
//

import UIKit

class MenuHeaderCell: UITableViewCell {

    
    var userHeader: Hexagon!
    var carHeader: Hexagon!
    var userName: UILabel!
    var identity: UILabel!
    var sw : UISwitch!
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let topX = self.bounds.minX
        let topY = self.bounds.minY + UIApplication.sharedApplication().statusBarFrame.height
        let w = self.contentView.bounds.width
        let h = self.contentView.bounds.height * 4
        
        var userHeaderRect: CGRect = CGRectMake(topX + w * 0.052, topY , w * 0.27, h * 0.45 )
        userHeader = Hexagon(frame: userHeaderRect, content: UIImage(named: "free-flat-halloween-icons-06")!)
        userHeader.backgroundColor = UIColor.clearColor()
        self.contentView.addSubview(userHeader)
        
        var carHeaderRect: CGRect = CGRectMake(topX + w * 0.453, topY + h * 0.14, w * 0.20, h * 0.35)
        carHeader = Hexagon(frame: carHeaderRect, content: UIImage(named: "free-flat-halloween-icons-06")!)
        carHeader.backgroundColor = UIColor.clearColor()
        self.contentView.addSubview(carHeader)
        
        var userNameRect: CGRect = CGRectMake(topX + w * 0.052, topY + h * 0.45, w * 0.4, h * 0.17)
        userName = UILabel(frame: userNameRect)
        userName.text = "Angel Ng"
        userName.textColor = UIColor(red: 220/255.0, green: 224/255.0, blue: 217/255.0, alpha: 1)
        userName.font = UIFont.systemFontOfSize(22)
        self.contentView.addSubview(userName)
        
        var identityRect: CGRect = CGRectMake(topX + w * 0.052, topY + h * 0.65, w * 0.4, h * 0.10)
        identity = UILabel(frame: identityRect)
        identity.text = "我是司机"
        identity.textColor = UIColor(red: 220/255.0, green: 224/255.0, blue: 217/255.0, alpha: 1)
        identity.font = UIFont.systemFontOfSize(13)
        self.contentView.addSubview(identity)
     
        var swRect: CGRect = CGRectMake(topX + w * 0.488, topY + h * 0.55, w * 0.15, h * 0.17)
        sw = UISwitch(frame: swRect)
//        sw.tintColor = UIColor.clearColor()
        self.contentView.addSubview(sw)
//        self.contentView.backgroundColor = UIColor.clearColor()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
