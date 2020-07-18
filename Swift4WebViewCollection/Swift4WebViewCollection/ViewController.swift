//
//  ViewController.swift
//  Swift4WebViewCollection
//
//  Created by momosuke on 2020/07/19.
//  Copyright © 2020 momosuke. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.delegate = self
        let url = URL(string: "https://www.yahoo.co.jp")
        let urlRequest = URLRequest(url: url!)
        webView.loadRequest(urlRequest)
    }

    func webViewDidStartLoad(_ webView: UIWebView) {
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }

}

