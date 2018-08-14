//
//  EmailCell.swift
//  mvvm
//
//  Created by Timothy Lee on 8/12/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class EmailCell: UITableViewCell {

    @IBOutlet weak var emailLabel: UILabel!
    
    var item: ProfileViewModelItem? {
        didSet {
            guard let item = item as? ProfileViewModelEmailItem else { return }
            
            emailLabel?.text = item.email
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
}
