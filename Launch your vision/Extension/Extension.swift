//
//  Extension.swift
//  Launch your vision
//
//  Created by Heshan Yodagama on 4/10/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import Foundation
import UIKit

extension UIColor{
    enum AppColor: String{
        case button1 = "butonColor-1"
        case button2 = "butonColor-2"
        case button3 = "butonColor-3"
        case button4 = "butonColor-4"
        case button5 = "butonColor-5"
        case button6 = "butonColor-6"
        case mainPink = "mainn-pink"
        case sub1 = "subtitle color-1"
        case sub2 = "subtitle color-2"
        case sub3 = "subtitle color-3"
        case sub4 = "subtitle color-4"
    }
    
    static func getAppColor(color: AppColor) -> UIColor{
        return UIColor(named: color.rawValue)!
    }
}

extension UIViewController{
    func goTo(viewController: UIViewController){
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
