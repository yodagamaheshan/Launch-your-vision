//
//  ImageSlideViewController.swift
//  Launch your vision
//
//  Created by Heshan Yodagama on 4/6/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import UIKit

class ImageSlideViewController: UIViewController {
    
    
    static func make() -> WebViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: WebViewController.self)) as? WebViewController
        return viewController!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
}
