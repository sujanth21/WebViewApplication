//
//  ViewController.swift
//  WebViewApplication
//
//  Created by Sujanth Sebamalaithasan on 25/8/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let url = URL(string: "https://www.apple.com/au/")
        let request = URLRequest(url: url!)
        
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

