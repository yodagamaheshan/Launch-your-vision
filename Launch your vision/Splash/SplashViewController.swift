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
    @IBOutlet weak var getUpLabel: UILabel!
    @IBOutlet weak var loveYourSelfLabel: UILabel!
    @IBOutlet weak var afformLabel: UILabel!
    @IBOutlet weak var makeThingsHappenLabel: UILabel!
    
    @IBOutlet weak var topLeftFlower: UIImageView!
    @IBOutlet weak var topRightFlower: UIImageView!
    @IBOutlet weak var mainStack: UIStackView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bottumnFlower: UIImageView!
    
    
    
    var shineLabel: RQShineLabel?
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    func setUpViews(){
        //animation
        shineLabel = RQShineLabel()
        shineLabel!.numberOfLines = 0
        shineLabel!.text = "LAUNCH YOUR\nVision"
        if let customFont = UIFont(name: "AvenirNextCondensed-Bold", size: 50){
             shineLabel?.font = customFont
        } else {
             shineLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        }
        shineLabel?.textAlignment = .center
        shineLabel?.textColor = UIColor.red
        shineLabel!.backgroundColor = UIColor.clear
        shineLabel!.sizeToFit()
        if UIDevice.current.userInterfaceIdiom == .pad{
            shineLabel?.center = myStack.center
        }
        myStack.addSubview(shineLabel!)
        
        navigationController?.navigationBar.isHidden = true
        getUpLabel.text = "Get\nUp".uppercased()
        loveYourSelfLabel.text = "love\nYourself".uppercased()
        afformLabel.text = "affirm \n your \n beliefs".uppercased()
        makeThingsHappenLabel.text = "make\nthings\nhappen\n now".uppercased()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        shineLabel!.shine()
        
        
        UIView.animate(withDuration: 2) {
            self.topLeftFlower.alpha = 1
             self.topRightFlower.alpha = 1
             self.mainStack.alpha = 1
             self.nameLabel.alpha = 1
             self.bottumnFlower.alpha = 1
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            let vc = HomeViewController.make()
            self.goTo(viewController: vc)
        })
    }
}
