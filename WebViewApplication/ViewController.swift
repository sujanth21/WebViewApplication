//
//  ViewController.swift
//  WebViewApplication
//
//  Created by Sujanth Sebamalaithasan on 25/8/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate, UISearchBarDelegate {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadWebview(string: "https://www.apple.com/au/")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        activityIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        activityIndicator.stopAnimating()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        searchBar.resignFirstResponder()
        loadWebview(string: "https://\(searchBar.text!)")
    }
    
    
    func loadWebview(string: String) {
        
        let url = URL(string: string)
        let request = URLRequest(url: url!)
        
        webView.loadRequest(request)
    }


}

