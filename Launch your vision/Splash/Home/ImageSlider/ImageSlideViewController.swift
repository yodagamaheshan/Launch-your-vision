//
//  ImageSlideViewController.swift
//  Launch your vision
//
//  Created by Heshan Yodagama on 4/6/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import UIKit
import ImageSlideshow

class ImageSlideViewController: UIViewController {
    
    @IBOutlet weak var imageSlideShow: ImageSlideshow!
    
     //TODO: change with real data
    let localSource = [BundleImageSource(imageString: "img1"), BundleImageSource(imageString: "img2"), BundleImageSource(imageString: "img3")]

    static func make() -> WebViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: WebViewController.self)) as? WebViewController
        return viewController!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews(){
        imageSlideShow.circular = false
        imageSlideShow.pageIndicatorPosition = .init(horizontal: .center, vertical: .bottom)
               imageSlideShow.contentScaleMode = UIViewContentMode.scaleAspectFill
        
        let pageControl = UIPageControl()
         //TODO: change with app color
        pageControl.currentPageIndicatorTintColor = UIColor(named: "selectedColoe")
        pageControl.pageIndicatorTintColor = UIColor(named: "NormalColor")
        imageSlideShow.pageIndicator = pageControl
        
        imageSlideShow.activityIndicator = DefaultActivityIndicator()
        imageSlideShow.setImageInputs(localSource)
    }
    
}
