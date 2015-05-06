//
//  CheckSegue.swift
//  享拼车
//
//  Created by Rich on 15-4-30.
//  Copyright (c) 2015年 enjoyTech. All rights reserved.
//

import UIKit

class CheckSegue: UIStoryboardSegue {
    
    override func perform(){
        var svc: UIViewController = self.sourceViewController as UIViewController
        var dvc: UIViewController = self.destinationViewController as UIViewController
        svc.view.addSubview(dvc.view)
        dvc.view.frame = svc.view.frame
        dvc.view.transform = CGAffineTransformMakeScale(0.1, 0.1)
        dvc.view.alpha = 0.0
        UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.AllowUserInteraction | UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            dvc.view.transform = CGAffineTransformMakeScale(1.0, 1.0)
            }) { (finished: Bool) -> Void in
            
        }
    
    }
}
