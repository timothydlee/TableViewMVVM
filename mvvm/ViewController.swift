//
//  ViewController.swift
//  mvvm
//
//  Created by Timothy Lee on 8/10/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tv: UITableView!
    fileprivate let viewModel = ProfileViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tv.dataSource = viewModel
    }

}

