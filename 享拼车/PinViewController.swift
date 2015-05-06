//
//  PinViewController.swift
//  享拼车
//
//  Created by Rich on 15-4-29.
//  Copyright (c) 2015年 enjoyTech. All rights reserved.
//

import UIKit


class PinViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNeedsStatusBarAppearanceUpdate()
        self.view.backgroundColor = UIColor.whiteColor()
        
        initNavigationBarRightAndLeft("发布拼车")
        
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
