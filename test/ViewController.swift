//
//  ViewController.swift
//  test
//
//  Created by Anas on 6/15/16.
//  Copyright © 2016 Anas. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UISearchBarDelegate{

    var searchController : UISearchController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController = UISearchController(searchResultsController: nil)
        searchController!.dimsBackgroundDuringPresentation = false
        searchController!.searchBar.placeholder = "Search Atheer..."
        searchController!.searchBar.sizeToFit()
        searchController!.hidesNavigationBarDuringPresentation = false
        
        // uncomment this to hit the page life cycle break points
        navigationItem.titleView = searchController!.searchBar
        // Do any additional setup after loading the view, typically from a nib.
    }

    // will be ignored if searchController is set as NavigationItem.titleView
    override func viewWillAppear(animated: Bool) {
        let a =  0
    }
    
    // will be ignored if searchController is set as NavigationItem.titleView
    override func viewWillDisappear(animated: Bool) {
        let a = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

