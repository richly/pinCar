//
//  PinViewController.swift
//  享拼车
//
//  Created by Rich on 15-4-29.
//  Copyright (c) 2015年 enjoyTech. All rights reserved.
//

import UIKit

class PinViewController: UIViewController,MAMapViewDelegate, AMapNaviManagerDelegate, AMapNaviViewControllerDelegate,UITableViewDelegate,UITableViewDataSource {
    
    let iconStrArr: NSArray = ["origin","ic_sent","ic_mb"]
    let titleArr: NSArray = ["起点","终点","出发时间"]
    let contentArr: NSArray = ["广州市天河区华南农业大学第三教学楼","广州市天河区华南农业大学第三教学楼","19：00"]
    var content: UITableView!!
    var mapView: MAMapView?
    var naviManager: AMapNaviManager?
    var naviViewController: AMapNaviViewController?
    var startPoint: AMapNaviPoint?
    var endPoint: AMapNaviPoint?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNeedsStatusBarAppearanceUpdate()
        self.view.backgroundColor = UIColor.whiteColor()
        
        initNavigationBarRightAndLeft("发布拼车")

        initMapView()
        initNaviManager()
        self.view.addSubview(content!)
    }
    func initMapView(){
        mapView = MAMapView(frame: CGRectMake(self.view.frame.minX, self.view.frame.minY +  navigationBarHeight, self.view.frame.width, self.view.frame.height * 3/4  - navigationBarHeight ))
        mapView!.delegate = self
    }
    func initNaviManager(){
        if (naviManager == nil) {
            naviManager = AMapNaviManager()
            naviManager?.delegate = self
        }
    }
    func startSimuNavi(){
        var startPoints = [AMapNaviPoint]()
        var endPoints = [AMapNaviPoint]()
        startPoints.append(startPoint!)
        endPoints.append(endPoint!)
        
        // 驾车路径规划
        naviManager?.calculateDriveRouteWithStartPoints(startPoints, endPoints: endPoints, wayPoints: nil, drivingStrategy: AMapNaviDrivingStrategy.Default)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = UITableViewCell()
            cell.contentView.addSubview(mapView!)
            return cell
        }else{
           let cell = PinSelectCell(style: UITableViewCellStyle.Default, reuseIdentifier: "selectCell")
            cell.icon.image = UIImage(named:"\(iconStrArr[indexPath.row])")
            cell.title.text = "\(titleArr[indexPath.row])"
            cell.content.text = "\(contentArr[indexPath.row])"
            return cell
        }
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 0 {
        return self.view.frame.height * 3/4  - navigationBarHeight
        }else{
        return self.view.frame.height * 1/12
        }
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
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
