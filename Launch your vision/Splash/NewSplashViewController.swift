//
//  NewSplashViewController.swift
//  GLAM
//
//  Created by Heshan Yodagama on 4/13/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import UIKit
import RQShineLabel

class NewSplashViewController: UIViewController {

    @IBOutlet weak var animatedLabel: RQShineLabel!
    @IBOutlet weak var sub1: RQShineLabel!
    @IBOutlet weak var sub2: RQShineLabel!
    @IBOutlet weak var sub3: RQShineLabel!
    @IBOutlet weak var sub4: RQShineLabel!
    @IBOutlet weak var webLabel: RQShineLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        // Do any additional setup after loading the view.
    }
    
    func setupViews(){
        
        
        let attributedString = NSMutableAttributedString(string: "21 Days to\nlaunch Your\nVision".uppercased())
        attributedString.addAttribute(NSAttributedString.Key.kern, value: 10, range: NSRange(location: 0, length: attributedString.length - 1))
        
        animatedLabel!.attributedText = attributedString

        
        animatedLabel.textAlignment = .center
        if #available(iOS 13.0, *) {
            animatedLabel.textColor = UIColor.label
            webLabel.textColor = UIColor.label
        } else {
            // Fallback on earlier versions
            animatedLabel.textColor = UIColor.black
             webLabel.textColor = UIColor.black
        }
        
        sub1.textColor = UIColor.getAppColor(color: .sub1)
        sub2.textColor = UIColor.getAppColor(color: .sub2)
        sub3.textColor = UIColor.getAppColor(color: .sub3)
        sub4.textColor = UIColor.getAppColor(color: .sub4)
        animatedLabel.backgroundColor = UIColor.clear
        animatedLabel.sizeToFit()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animatedLabel.shine()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            
            UIView.animate(withDuration: 2) {
                                  self.sub2.isHidden = false
                   }
            
        })
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8, execute: {
            
            UIView.animate(withDuration: 2) {
            self.sub3.isHidden = false
            }
            
        })
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.1, execute: {

            UIView.animate(withDuration: 1, animations: {
                self.sub1.isHidden = false
            }) { (bool) in
                UIView.animate(withDuration: 1, animations: {
                    self.sub2.isHidden = false
                }) { (bool) in
                    UIView.animate(withDuration: 1, animations: {
                        self.sub3.isHidden = false
                    }) { (bool) in
                        UIView.animate(withDuration: 2) {
                            self.sub4.isHidden = false
                        }
                    }
                }
            }
            
        })
        
    }
}
