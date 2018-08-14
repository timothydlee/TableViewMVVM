//
//  ViewController.swift
//  mvvm
//
//  Created by Timothy Lee on 8/10/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tv: UITableView?
    fileprivate let viewModel = ProfileViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tv?.dataSource = viewModel
        tv?.estimatedRowHeight = 100
        tv?.rowHeight = UITableViewAutomaticDimension
        
        tv?.register(AboutCell.nib, forCellReuseIdentifier: AboutCell.identifier)
        tv?.register(NamePictureCell.nib, forCellReuseIdentifier: NamePictureCell.identifier)
        tv?.register(EmailCell.nib, forCellReuseIdentifier: EmailCell.identifier)
        tv?.register(FriendCell.nib, forCellReuseIdentifier: FriendCell.identifier)
        tv?.register(AttributeCell.nib, forCellReuseIdentifier: AttributeCell.identifier)
    }

}

