//
//  NavigationController.swift
//  test
//
//  Created by Anas on 6/15/16.
//  Copyright © 2016 Anas. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        
    }
    
    // will be ignored if searchController is set as NavigationItem.titleView
    override func viewWillAppear(animated: Bool) {
        let a = 0
    }
    
    
    // will be ignored if searchController is set as NavigationItem.titleView
    override func viewWillDisappear(animated: Bool) {
        let a = 0
    }
}
