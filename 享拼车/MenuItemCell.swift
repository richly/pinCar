//
//  MenuItemCell.swift
//  享拼车
//
//  Created by Rich on 15-4-30.
//  Copyright (c) 2015年 enjoyTech. All rights reserved.
//

import UIKit

class MenuItemCell: UITableViewCell {

    var icon: UIImageView!
    var label: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        icon = UIImageView(frame: CGRectZero)
        self.contentView.addSubview(icon)
        label = UILabel(frame: CGRectZero)
        label.textColor = UIColor(red: 134/255.0, green: 196/255.0, blue: 77/255.0, alpha: 1)
        label.font = UIFont.systemFontOfSize(20)
        self.contentView.addSubview(label)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var iconRect : CGRect = CGRectMake(self.contentView.bounds.minX + self.contentView.bounds.height * 0.2,self.contentView.bounds.minY + self.contentView.bounds.height * 0.1,self.contentView.bounds.height * 0.8,self.contentView.bounds.height * 0.8)
        icon.frame = iconRect
        var labelRect : CGRect = CGRectMake(self.contentView.bounds.minX + self.contentView.bounds.height * 1.8,self.contentView.bounds.minY + self.contentView.bounds.height/4,self.contentView.bounds.width - self.contentView.bounds.height,self.contentView.bounds.height/2)
        label.frame  = labelRect
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
