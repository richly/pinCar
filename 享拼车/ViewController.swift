//
//  ViewController.swift
//  享拼车
//
//  Created by Rich on 15-5-6.
//  Copyright (c) 2015年 iSCAU. All rights reserved.
//

import UIKit
extension UIViewController{
    
    func initNavigationBarLeft(title: String){
        var navBar : UINavigationBar = UINavigationBar(frame: CGRectMake(self.view.bounds.minX, self.view.bounds.minY, self.view.bounds.width, 44 + UIApplication.sharedApplication().statusBarFrame.height))
        navBar.tintColor = UIColor.whiteColor()
        navBar.barTintColor = YellowGreen
        
        var item: UINavigationItem = UINavigationItem(title: nil)
        var titleLabel =  UILabel(frame: CGRectMake(navBar.bounds.midX - 25, navBar.bounds.minY, 50, navBar.bounds.height))
        titleLabel.text = title
        titleLabel.textColor = UIColor.whiteColor()
        titleLabel.font = UIFont.systemFontOfSize(20.0)
        item.titleView = titleLabel
        
        var left : UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        left.frame = CGRectMake(navBar.bounds.minX, navBar.bounds.minY, 50,26)
        left.setImage(UIImage(named: "back_button"), forState: UIControlState.Normal)
        left.addTarget(self, action: Selector("back"), forControlEvents: UIControlEvents.TouchUpInside)
        item.leftBarButtonItem = UIBarButtonItem(customView: left)
        navBar.pushNavigationItem(item, animated: false)
        self.view.addSubview(navBar)
    }
    func initNavigationBarRightAndLeft(title: String){
        var navBar : UINavigationBar = UINavigationBar(frame: CGRectMake(self.view.bounds.minX, self.view.bounds.minY, self.view.bounds.width, 44 + UIApplication.sharedApplication().statusBarFrame.height))
        navBar.tintColor = UIColor.whiteColor()
        navBar.barTintColor = YellowGreen
        
        var item: UINavigationItem = UINavigationItem(title: nil)
        var titleLabel =  UILabel(frame: CGRectMake(navBar.bounds.midX - 25, navBar.bounds.minY, 50, navBar.bounds.height))
        titleLabel.text = title
        titleLabel.textColor = UIColor.whiteColor()
        titleLabel.font = UIFont.systemFontOfSize(20.0)
        item.titleView = titleLabel
        
        var left : UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        left.frame = CGRectMake(navBar.bounds.minX, navBar.bounds.minY, 50,26)
        left.setImage(UIImage(named: "back_button"), forState: UIControlState.Normal)
        left.addTarget(self, action: Selector("back"), forControlEvents: UIControlEvents.TouchUpInside)
        item.leftBarButtonItem = UIBarButtonItem(customView: left)
        
        var right : UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        right.frame = CGRectMake(navBar.bounds.minX, navBar.bounds.minY, 30,23)
        right.setImage(UIImage(named: "ic_dh"), forState: UIControlState.Normal)
        right.addTarget(self, action: Selector("back"), forControlEvents: UIControlEvents.TouchUpInside)
        item.rightBarButtonItem = UIBarButtonItem(customView: right)
        
        navBar.pushNavigationItem(item, animated: false)
        self.view.addSubview(navBar)
    }
    func back(){
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

