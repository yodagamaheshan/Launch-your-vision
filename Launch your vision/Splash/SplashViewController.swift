//
//  SplashViewController.swift
//  Launch your vision
//
//  Created by Heshan Yodagama on 4/6/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import UIKit
import RQShineLabel

class SplashViewController: UIViewController {

    @IBOutlet weak var titlePlaceHolder: UIView!
    @IBOutlet weak var myStack: UIStackView!
    var shineLabel: RQShineLabel?
    override func viewDidLoad() {
        super.viewDidLoad()
        shineLabel = RQShineLabel()
        shineLabel!.numberOfLines = 0
        shineLabel!.text = "LAUNCH YOUR\nVision"
        shineLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        shineLabel?.textAlignment = NSTextAlignment(.center)
        shineLabel?.textColor = UIColor.red
        shineLabel!.backgroundColor = UIColor.clear
        shineLabel!.sizeToFit()
        myStack.addSubview(shineLabel!)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        shineLabel!.shine()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: {
            //goto home
        })
    }
}
