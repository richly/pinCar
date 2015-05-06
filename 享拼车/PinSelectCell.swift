
//
//  PinSelectCell.swift
//  享拼车
//
//  Created by Rich on 15-5-6.
//  Copyright (c) 2015年 iSCAU. All rights reserved.
//

import UIKit

class PinSelectCell: UITableViewCell {

    var icon: UIImageView!
    var title: UILabel!
    var content: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        icon = UIImageView(frame: CGRectZero)
        icon.backgroundColor = UIColor.clearColor()
        self.contentView.addSubview(icon)
        
        title = UILabel(frame: CGRectZero)
        self.contentView.addSubview(title)
        
        content = UILabel(frame: CGRectZero)
        content.numberOfLines = 0
        content.lineBreakMode = NSLineBreakMode.ByCharWrapping
        self.contentView.addSubview(content)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        var iconRect: CGRect = CGRectMake(self.contentView.bounds.minX, self.contentView.bounds.minY,self.contentView.bounds.width * 0.14, self.contentView.bounds.height)
        icon.frame = iconRect
        var titleRect: CGRect = CGRectMake(self.contentView.bounds.minX + self.contentView.bounds.width * 0.14, self.contentView.bounds.minY, self.contentView.bounds.width * 0.40, self.contentView.bounds.height)
        title.frame = titleRect
        var contentRect: CGRect = CGRectMake(self.contentView.bounds.minX + self.contentView.bounds.width * 0.54, self.contentView.bounds.minY, self.contentView.bounds.width, self.contentView.bounds.height)
        title.frame = titleRect
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
