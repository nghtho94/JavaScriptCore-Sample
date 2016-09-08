//
//  WebViewController.swift
//  JavaScriptSample
//
//  Created by tho on 9/5/16.
//  Copyright © 2016 ThoNguyen. All rights reserved.
//

import UIKit
import JavaScriptCore

class WebViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    var jsContext = JSContext()
    override func viewDidLoad() {
        super.viewDidLoad()

        loadWebViewContent()
    }

    
    func loadWebViewContent(){

        
        let urlString = NSBundle.mainBundle().pathForResource("example", ofType: "html", inDirectory: "web")

        let url = NSURL(string: urlString!)
        print(urlString)
        print(NSBundle.mainBundle().resourcePath)
        let request = NSURLRequest(URL: url!)
        self.webView.loadRequest(request)

    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        let context = webView.valueForKeyPath("documentView.webView.mainFrame.javaScriptContext") as! JSContext

        jsContext = context        
        jsContext!.setObject(JS.self, forKeyedSubscript: "JSWebView")
    }
    
    

    

    



}
