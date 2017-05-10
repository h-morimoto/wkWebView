//
//  ViewController.swift
//  wkWebView
//
//  Created by 森本 紘太 on 2017/04/28.
//  Copyright © 2017年 h.morimoto. All rights reserved.
//

import UIKit
//1.WebKit Frameworkをimportする
import WebKit


class ViewController: UIViewController, WKUIDelegate {
    
    //2.WKWebviewの宣言！
    private var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.UIDelegate  = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = NSURL(string: "https://www.compathy.net/magazine/2017/04/26/houtoenjoy_singapore_library/")
        let myRequest = NSURLRequest(URL: myURL!)
        webView.loadRequest(myRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

