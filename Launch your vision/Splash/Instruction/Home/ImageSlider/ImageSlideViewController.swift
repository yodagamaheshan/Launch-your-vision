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
    
    enum MainScrollable {
        case IAmCard
        case DotheWork
        case Q1
        case Q2
        
        func getImages() ->  [BundleImageSource]{
            var imageArray: [BundleImageSource] = []
            switch self {
            case .IAmCard:
                for i in 1 ... 36 {
                    imageArray.append(BundleImageSource(imageString: "iAm-\(i)"))
                }
            
            case .DotheWork:
                for i in 1 ... 21 {
                    imageArray.append(BundleImageSource(imageString: "DoTheWork-\(i)"))
                }
            case .Q1:
                for i in 1 ... 24 {
                    imageArray.append(BundleImageSource(imageString: "Quotes -\(i)"))
                }
            case .Q2:
                for i in 1 ... 20 {
                    if i == 10{
                        //buyer asked to remove
                        continue
                    }
                    imageArray.append(BundleImageSource(imageString: "Quotes2-\(i)"))
                }
            }
            return imageArray
        }
    }
    @IBOutlet weak var imageSlideShow: ImageSlideshow!
    var type: MainScrollable = .IAmCard
    
     //TODO: change with real data
    var localSource: [BundleImageSource]{ type.getImages()}

    static func make() -> ImageSlideViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: ImageSlideViewController.self)) as? ImageSlideViewController
        return viewController!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    func setupViews(){
        
        navigationController?.navigationBar.isHidden = false
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
