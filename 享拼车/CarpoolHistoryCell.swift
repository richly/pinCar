//
//  CarpoolHistoryCell.swift
//  享拼车
//
//  Created by Rich on 15-5-2.
//  Copyright (c) 2015年 enjoyTech. All rights reserved.
//

import UIKit

class CarpoolHistoryCell: UITableViewCell {

    var userHeader: Hexagon!
    var timeLabel: UILabel!
    var originGreenPoint: UIImageView!
    var originLabel: UILabel!
    var destGreenPoiont: UIImageView!
    var destLabel: UILabel!
    var priceLabel: UILabel!
    var againIcon: UIButton!
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        userHeader = Hexagon(frame: CGRectZero)
        userHeader.backgroundColor = UIColor.clearColor()
        self.contentView.addSubview(userHeader)
        
        originGreenPoint = UIImageView(frame: CGRectZero)
        self.contentView.addSubview(originGreenPoint)
        
        destGreenPoiont = UIImageView(frame: CGRectZero)
        self.contentView.addSubview(destGreenPoiont)

        againIcon = UIButton(frame: CGRectZero)
        self.contentView.addSubview(againIcon)
        
        timeLabel = UILabel(frame: CGRectZero)
        timeLabel.textColor = UIColor.grayColor()
        timeLabel.font = UIFont.systemFontOfSize(11.0)
        self.contentView.addSubview(timeLabel)
        
        originLabel = UILabel(frame: CGRectZero)
        originLabel.textColor = UIColor.blackColor()
        originLabel.font = UIFont.systemFontOfSize(13.0)
////        originLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping
        originLabel.numberOfLines = 0
        self.contentView.addSubview(originLabel)
        
        destLabel = UILabel(frame: CGRectZero)
        destLabel.textColor = UIColor.blackColor()
        destLabel.font = UIFont.systemFontOfSize(13.0)
        destLabel.numberOfLines = 0
        destLabel.lineBreakMode = NSLineBreakMode.ByCharWrapping
        self.contentView.addSubview(destLabel)
        
        priceLabel = UILabel(frame: CGRectZero)
        priceLabel.textColor = YellowGreen
        priceLabel.font = UIFont.systemFontOfSize(11.0)
        self.contentView.addSubview(priceLabel)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var boundMinX = self.contentView.bounds.minX
        var boundMinY = self.contentView.bounds.minY
        var boundHeight = self.contentView.bounds.height
        var boundWidth = self.contentView.bounds.width
        
        var userHeaderRect : CGRect = CGRectMake(boundMinX + boundWidth * 0.06 ,boundMinY + boundHeight * 0.13,boundWidth * 0.12,boundHeight * 0.57)
        userHeader.frame = userHeaderRect
        
        var originGreenPointRect : CGRect = CGRectMake(boundMinX + boundWidth * 0.21 ,boundMinY + boundHeight * 0.15,boundWidth * 0.02,boundHeight * 0.09)
        originGreenPoint.frame = originGreenPointRect
        
        var destGreenPoiontRect : CGRect = CGRectMake(boundMinX + boundWidth * 0.21 ,boundMinY + boundHeight * 0.46,boundWidth * 0.02,boundHeight * 0.09)
        destGreenPoiont.frame = destGreenPoiontRect
        
        var originLabelRect : CGRect = CGRectMake(boundMinX + boundWidth * 0.26 ,boundMinY + boundHeight * 0.08,boundWidth * 0.55,boundHeight * 0.35)
        originLabel.frame  = originLabelRect
        
        var destLabelRect : CGRect = CGRectMake(boundMinX + boundWidth * 0.26 ,boundMinY + boundHeight * 0.40,boundWidth * 0.55,boundHeight * 0.40)
        destLabel.frame  = destLabelRect
        
        var againIconRect : CGRect = CGRectMake(boundMinX + boundWidth * 0.81 ,boundMinY + boundHeight * 0.18,boundWidth * 0.14,boundHeight * 0.55)
        againIcon.frame  = againIconRect
        
        var timeLabelRect : CGRect = CGRectMake(boundMinX + boundWidth * 0.05 ,boundMinY + boundHeight * 0.80,boundWidth * 0.3,boundHeight * 0.14)
        timeLabel.frame  = timeLabelRect
        
        var priceLabelRect : CGRect = CGRectMake(boundMinX + boundWidth * 0.35 ,boundMinY + boundHeight * 0.80,boundWidth * 0.33,boundHeight * 0.14)
        priceLabel.frame  = priceLabelRect
        
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
