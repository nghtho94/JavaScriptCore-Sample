//
//  ViewController.swift
//  JavaScriptSample
//
//  Created by tho on 9/3/16.
//  Copyright © 2016 ThoNguyen. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    let javaScript = JSService()
    
    @IBAction func callWebviewController(sender: AnyObject) {
        javaScript.callWebView()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.pushToWebViewVC(_:)), name: "pushWebView", object: nil)
    }
    
    func pushToWebViewVC(notification: NSNotification){
        let vc = self.navigationController?.storyboard?.instantiateViewControllerWithIdentifier("WebViewController") as! WebViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }


}

