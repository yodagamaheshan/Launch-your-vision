//
//  WebViewController.swift
//  Launch your vision
//
//  Created by Heshan Yodagama on 4/6/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webViewContainer: WKWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var url = URL(string: "https://sonjiapeltonsam.com/coaching-packages/")
    
    static func make() -> WebViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: WebViewController.self)) as? WebViewController
        return viewController!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webViewContainer.navigationDelegate = self
        loadContent()
    }
    
    private func loadContent(){
        activityIndicator.startAnimating()
        webViewContainer.isHidden = true
        webViewContainer.stopLoading()
        webViewContainer.load(URLRequest(url: url!))
    }
}

extension WebViewController: WKNavigationDelegate{
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        webView.isHidden = false
        activityIndicator.stopAnimating()
    }
}
