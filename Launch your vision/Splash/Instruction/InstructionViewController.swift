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

        // Do any additional setup after loading the view.
    }
    @IBAction func webLinkButtonTapped(_ sender: Any) {
    }
    
    @IBAction func skipButtonTapped(_ sender: Any) {
    }
    
}
