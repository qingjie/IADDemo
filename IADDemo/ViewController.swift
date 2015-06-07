//
//  ViewController.swift
//  IADDemo
//
//  Created by qingjiezhao on 6/6/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController , ADBannerViewDelegate{

    
    @IBOutlet weak var iadBanner: ADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iadBanner.hidden = true
        iadBanner.delegate = self
        self.canDisplayBannerAds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        NSLog("Error!");
    }
    
    func bannerViewWillLoadAd(banner: ADBannerView!) {
        
    }
    
    func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
        return true
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        iadBanner.hidden = false
    }
}

