//
//  ViewController.swift
//  PageControl_Swift
//
//  Created by Htrucci on 2017. 6. 24..
//  Copyright © 2017년 Htrucci. All rights reserved.
//

import UIKit

var images = ["01.png", "02.png", "03.png", "04.png", "05.png", "06.png"]

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        imgView.image = UIImage(named: images[0])
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func pageChanged(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }


}

