//
//  HomeViewController.swift
//  Launch your vision
//
//  Created by Heshan Yodagama on 4/6/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet var homeButtons: [UIButton]!
    
    
    static func make() -> HomeViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: HomeViewController.self)) as? HomeViewController
        return viewController!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
         navigationController?.navigationBar.isHidden = true
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false

    }
    
    func setupViews(){
        for button in homeButtons{
            button.titleLabel?.numberOfLines = 0
            button.titleLabel?.textAlignment = .center
            
            switch button.tag {
            case 1:
                button.setTitle("Do the work\n&\nlaunch your\nvision now".uppercased(), for: .normal)
            case 2:
                button.setTitle("i am\ncards\n&\nScriptures".uppercased(), for: .normal)
            case 3:
                button.setTitle("quotes  1".uppercased(), for: .normal)
            case 4:
                button.setTitle("quotes  2".uppercased(), for: .normal)
            case 5:
                button.setTitle("visit our\nstore".uppercased(), for: .normal)
            case 6:
                button.setTitle("Get Your\n FREE GIFT\n NOW!!! ".uppercased(), for: .normal)
            default:
                button.setTitle("", for: .normal)
            }
        }
    }
    
    @IBAction func homeButtonTapped(_ sender: UIButton) {
        let vc = ImageSlideViewController.make()
        
        switch sender.tag {
        case 1:
            vc.type = .IAmCard
            goTo(viewController: vc)
        case 2:
            vc.type = .DotheWork
            goTo(viewController: vc)
        case 3:
            vc.type = .Q1
            goTo(viewController: vc)
        case 4:
            vc.type = .Q2
            goTo(viewController: vc)
        case 5:
            guard let url = URL(string: "https://www.etsy.com/shop/VisionBoardBoutique") else {
                return
            }
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        case 6:
            guard let url = URL(string: "https://sonjiapeltonsam.com/coaching-packages/") else {
                return
            }
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        default:
            return
        }
    }
    
}
