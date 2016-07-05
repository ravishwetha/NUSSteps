//
//  ShortestPathViewController.swift
//  GEMApp
//
//  Created by Ravi on 24/1/16.
//  Copyright © 2016 Group24. All rights reserved.
//

import Foundation

import UIKit



class ShortestPathViewController: UIPageViewController {
    
    
    
    var scrollView: UIScrollView!
    
    var imageView: UIImageView!
    
    
    
    var ScrollImage = UIImage()
    
    var PathString = String()
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        imageView = UIImageView(image: ScrollImage)
        
        print(PathString)
        
        scrollView = UIScrollView(frame: view.bounds)
        
        scrollView.backgroundColor = UIColor.blackColor()
        
        scrollView.contentSize = imageView.bounds.size
        
        scrollView.addSubview(imageView)
        
        view.addSubview(scrollView)
        
    }
    
}