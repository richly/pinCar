//
//  PinViewController.swift
//  享拼车
//
//  Created by Rich on 15-4-29.
//  Copyright (c) 2015年 enjoyTech. All rights reserved.
//

import UIKit

extension UIViewController{

    func initNavigationBar(title: String){
        
    
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
        left.frame = CGRectMake(navBar.bounds.minX, navBar.bounds.minY, 70,38)
        left.setImage(UIImage(named: "backItem"), forState: UIControlState.Normal)
        left.addTarget(self, action: Selector("back"), forControlEvents: UIControlEvents.TouchUpInside)
        item.leftBarButtonItem = UIBarButtonItem(customView: left)
        navBar.pushNavigationItem(item, animated: false)
        self.view.addSubview(navBar)
    }
    func back(){
        self.navigationController?.popToRootViewControllerAnimated(true)
    }

}
class PinViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNeedsStatusBarAppearanceUpdate()
        self.view.backgroundColor = UIColor.whiteColor()
        
        initNavigationBar("发布拼车")
        
        self.view.backgroundColor = UIColor.whiteColor()
//        okbtn.addTarget(self, action: Selector("check"), forControlEvents: UIControlEvents.TouchUpInside)
        
//        var okItem = UIView()
//        
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "ic_dh"), style: UIBarButtonItemStyle.Bordered, target: self, action: Selector("check"))
//        var backButton: UIButton = UIButton(frame: CGRectMake(0, 0, 64, 64))
//        backButton.setImage(UIImage(named:"back"), forState: UIControlState.Normal)
//        backButton.addTarget(self, action: Selector("back"), forControlEvents: UIControlEvents.TouchUpInside)
//        var item: UIBarButtonItem = UIBarButtonItem(customView: backButton)
//        self.navigationItem.leftBarButtonItem = item
        
    }
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    func check(){
    self.navigationController?.popToRootViewControllerAnimated(true)
        self.navigationController?.navigationBarHidden = true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
