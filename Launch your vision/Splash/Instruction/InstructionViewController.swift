//
//  InstructionViewController.swift
//  GLAM
//
//  Created by Heshan Yodagama on 4/14/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import UIKit

class InstructionViewController: UIViewController {

    
    @IBOutlet weak var instructionTitle: UILabel!
    @IBOutlet var largDescriptions: [UILabel]!
    
    @IBOutlet var smallDescriptions: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func webLinkButtonTapped(_ sender: Any) {
    }
    
    @IBAction func skipButtonTapped(_ sender: Any) {
        let vc = HomeViewController.make()
        goTo(viewController: vc)
    }
    
    func setUpViews(){
        //instruction label
        let attributedString = NSMutableAttributedString(string: "INSTRUCTIONS".uppercased())
        attributedString.addAttribute(NSAttributedString.Key.kern, value: 6, range: NSRange(location: 0, length: attributedString.length - 1))
        instructionTitle.attributedText = attributedString

    
        //small
        let smallDes1 = NSMutableAttributedString(string: "next you will find a page with 6 squares. Click on each square and you will find prompts, affirmations, scriptures,& quote cards. swipe left to move to the next card.".uppercased())
        smallDes1.addAttribute(NSAttributedString.Key.kern, value: 5, range: NSRange(location: 0, length: smallDes1.length - 1))
        
        smallDescriptions[0].attributedText = smallDes1
        
        let smallDes2 = NSMutableAttributedString(string: "click on the last square on the right to get a free gift!!!".uppercased())
        smallDes2.addAttribute(NSAttributedString.Key.kern, value: 4, range: NSRange(location: 0, length: smallDes2.length - 1))
        
        smallDescriptions[1].attributedText = smallDes2
        
            
    }
    
    func textGenerator(){
        
              var str = "THIS APP HAS 21 DAYS OF PROMPTS TO HELP YOU GET A JUMPSTART ON REACHING YOUR GOALS."
              var newStr = ""
              for _ in str{
                  newStr.append(contentsOf: "\(str.removeFirst()) ")
              }
              print(newStr)
              
              var str2 = "YOU ALSO HAVE SCRIPTURES, QUOTES, & AFFIRMATIONS. THESE HELP IGNITE, MOTIVATE, & INSPIRE YOU TO REACH YOUR DESIRED RESULTS."
              var newStr2 = ""
              for _ in str2{
                  newStr2.append(contentsOf: "\(str2.removeFirst()) ")
              }
              print(newStr2)
    }
}

extension String {

func lineSpaced(_ spacing: CGFloat) -> NSAttributedString {
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.lineSpacing = spacing
    let attributedString = NSAttributedString(string: self, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
    return attributedString
}
}
