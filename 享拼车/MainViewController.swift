//
//  ViewController.swift
//  享拼车
//
//  Created by Rich on 15-4-27.
//  Copyright (c) 2015年 enjoyTech. All rights reserved.
//

import UIKit
import Foundation
class MainViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
   
    var  mainView: UIView!
    var  leftListView: UITableView!
    var  shadowView: UIView!
    var  headerView: HeaderView!
    var  middleView: MiddleView!
    var  historyTable: UITableView!
    var  topView: UIView!
    
    let items = ["个人资料","我的钱包","通知中心","拼单中心","关于我们","设置"]
    let icons = ["privateData","yen","comment","mail-boxes","question","setting"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setNeedsStatusBarAppearanceUpdate()
        topView = UIView(frame: CGRectMake(-self.view.bounds.width, 0, self.view.bounds.width, self.view.bounds.height))
        /*1leftListView----------------------------------*/
        leftListView = UITableView(frame: CGRectMake(0, 0, self.view.bounds.width * 0.6, self.view.bounds.height), style: UITableViewStyle.Plain)
        leftListView.registerClass(MenuHeaderCell.self, forCellReuseIdentifier: "menuHeader")
        leftListView.registerClass(MenuItemCell.self, forCellReuseIdentifier: "menuItem")
        leftListView.separatorStyle = UITableViewCellSeparatorStyle.None
        leftListView.delegate = self
        leftListView.dataSource = self
        leftListView.scrollEnabled = false
        topView.addSubview(leftListView)
        
        /*2shadowView*/
        shadowView = UIView(frame: CGRectMake(self.view.bounds.width * 0.6, 0, self.view.bounds.width * 0.4, self.view.bounds.height))
        shadowView.backgroundColor = UIColor.blackColor()
        shadowView.alpha = 0.5
        
        var ges = UIPanGestureRecognizer(target: self, action: Selector("closeMenu:"))
        topView.addGestureRecognizer(ges)
        /*3mainView--------------------------------------*/
        mainView = UIView(frame: CGRectMake(0, 0, self.view.bounds.width, self.view.bounds.height))
        mainView.backgroundColor = UIColor.whiteColor()
            /*3.1headerView
                (X:0 - 1,Y: 0 - 11/20 )
            */
        headerView = HeaderView(frame: CGRectMake(0, 0, self.view.bounds.width, self.view.bounds.height * 0.54))
        headerView.menuBtn.addTarget(self, action: Selector("showMenu"), forControlEvents: UIControlEvents.TouchUpInside)
        self.mainView.addSubview(headerView)
            /*3.2middleView
                (X:0 - 1,Y: 12/20 - 17/20 )
            */
        middleView = MiddleView(frame: CGRectMake(5, self.view.bounds.minY + self.view.bounds.height * 0.56, self.view.bounds.width - 10, self.view.bounds.height * 0.21))
        middleView.layer.cornerRadius = 5
        middleView.layer.borderWidth = 2
        middleView.layer.borderColor = UIColor(red: 236/255.0, green: 235/255.0, blue: 235/255.0, alpha: 1).CGColor
        middleView.plusBtn.addTarget(self, action: Selector("pushPin"), forControlEvents: UIControlEvents.TouchUpInside)
        middleView.layer.shadowPath = UIBezierPath(rect: middleView.bounds).CGPath
        middleView.layer.shadowColor = UIColor.blackColor().CGColor
        middleView.layer.shadowOpacity = 0.5
        middleView.layer.shadowOffset = CGSizeMake(3, 3)
        middleView.layer.shadowRadius = 3
        middleView.layer.masksToBounds = false
//        mainView.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: Selector("handlePan:")))
        self.mainView.addSubview(middleView)
        /*3.3tableView------------------------------------*/
        
        historyTable = UITableView(frame: CGRectMake(0, self.view.bounds.minY + self.view.bounds.height * 0.77, self.view.bounds.width, self.view.bounds.height * 0.23), style: UITableViewStyle.Grouped)
        historyTable.registerClass(CarpoolHistoryCell.self, forCellReuseIdentifier: "history")
        historyTable.sectionIndexColor = UIColor.whiteColor()
        historyTable.delegate = self
        historyTable.dataSource = self
        historyTable.autoresizingMask = UIViewAutoresizing.FlexibleBottomMargin
        self.mainView.addSubview(historyTable)
        
        println(historyTable.frame)
        println(self.view.frame)
        
        
        
        self.view.addSubview(mainView)
        self.view.addSubview(topView)
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBarHidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
  
   
    func showMenu(){
        
        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveLinear, animations: { () -> Void in
            
            self.shadowView.hidden = false
            self.topView.center = self.mainView.center
            
            }) { (finished: Bool) -> Void in
                
                self.topView.addSubview(self.shadowView)
                
            }
        
    }
    
    func closeMenu(pan: UIPanGestureRecognizer){
        
        var translation : CGPoint = pan.translationInView(self.topView)
        
        
            if translation.x < 0 {
            if pan.state == UIGestureRecognizerState.Changed{
           
                self.topView.center.x += translation.x
                self.shadowView.hidden = true
                
            }else if pan.state == UIGestureRecognizerState.Ended{
        
                UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveLinear, animations: { () -> Void in
            
                    self.topView.center.x = -self.mainView.center.x
            
                    }) { (finished: Bool) -> Void in
                    self.shadowView.removeFromSuperview()
                }
            }
        }
   }

    func pushPin(){
    self.navigationController?.pushViewController(PinViewController(), animated: true)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        if tableView == self.historyTable{
            return  7
        }else if tableView == self.leftListView{
            return 1
        }else{
            return 0
        }
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.historyTable{
            return  1
        }else if tableView == self.leftListView{
            return 7
        }else{
            return 0
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if tableView == self.historyTable{
        return self.view.bounds.height * 0.15
        }else if tableView == self.leftListView {
            if indexPath.row < 1 {
                return self.leftListView.bounds.height * 0.25
            }else{
                return 44
            }
        }else{
          return 0
        }
    
    }
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if tableView == self.historyTable{
            return self.view.bounds.height * 0.01
        }else if tableView == self.leftListView{
            return 0
        }else{
            return 0
        }
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if tableView == self.historyTable{
        let carpoolhistorycell = self.historyTable.dequeueReusableCellWithIdentifier("history", forIndexPath: indexPath) as CarpoolHistoryCell
        carpoolhistorycell.layer.borderWidth = 6
        carpoolhistorycell.layer.cornerRadius = 5
        carpoolhistorycell.layer.borderColor = UIColor(red: 236/255.0, green: 235/255.0, blue: 235/255.0, alpha: 1).CGColor
        carpoolhistorycell.userHeader.contentImage = UIImage(named: "free-flat-halloween-icons-86")
        carpoolhistorycell.destGreenPoiont.image = UIImage(named: "greenPoint.png")
        carpoolhistorycell.originGreenPoint.image = UIImage(named: "greenPoint.png")
        carpoolhistorycell.againIcon.setImage(UIImage(named: "again.png"), forState: UIControlState.Normal)
        carpoolhistorycell.originLabel.text = "广东省广州市海珠区广州塔星巴克咖啡厅"
        carpoolhistorycell.destLabel.text = "广州市天河区华南农业大学第三教学楼"
        carpoolhistorycell.timeLabel.text = "2015-4-15 15:34"
        carpoolhistorycell.priceLabel.text = "$342"
        carpoolhistorycell.highlighted = false
        carpoolhistorycell.againIcon.addTarget(self, action: Selector("ok:"), forControlEvents: UIControlEvents.TouchUpInside)
        carpoolhistorycell.againIcon.tag = indexPath.row
        carpoolhistorycell.selected = false
            return carpoolhistorycell
        }else if tableView == self.leftListView{
            if indexPath.row < 1 {
                let userHeader: MenuHeaderCell = self.leftListView.dequeueReusableCellWithIdentifier("menuHeader", forIndexPath: indexPath) as MenuHeaderCell
                userHeader.backgroundColor = UIColor(red: 100/255.0, green: 159/255.0, blue: 60/255.0, alpha: 1)
                userHeader.selectionStyle = UITableViewCellSelectionStyle.None
                return userHeader
            }else{
                let menuItem: MenuItemCell = self.leftListView.dequeueReusableCellWithIdentifier("menuItem", forIndexPath: indexPath) as MenuItemCell
                menuItem.icon.image = UIImage(named: icons[indexPath.row - 1])
                menuItem.label.text = items[indexPath.row - 1]
                return menuItem
            }
        }else{
            let cell = UITableViewCell()
            return cell
        }
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if tableView == self.leftListView{
            switch indexPath.row {
            case 1: self.navigationController?.pushViewController(PrivateDataViewController(), animated: true)
            case 2: self.navigationController?.pushViewController(MyWalletViewController(), animated: true)
            case 3: self.navigationController?.pushViewController(NotificationCenterViewController(), animated: true)
            case 4: self.navigationController?.pushViewController(PinSheetCenterViewController(), animated: true)
            case 5: self.navigationController?.pushViewController(AboutUsViewController(), animated: true)
            case 6: self.navigationController?.pushViewController(SettingViewController(), animated: true)
            default: break
            }
        }else if tableView == self.historyTable{
            
        }
        else{
            
        }
    }
    func ok(sender: UIButton){
        var v : UIView = sender.superview!
        var cell: CarpoolHistoryCell = v.superview as CarpoolHistoryCell
        var indexpath: NSIndexPath = self.historyTable.indexPathForCell(cell)!
    println(indexpath.section)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

