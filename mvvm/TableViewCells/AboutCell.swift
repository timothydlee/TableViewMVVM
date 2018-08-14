//
//  AboutCell.swift
//  mvvm
//
//  Created by Timothy Lee on 8/12/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class AboutCell: UITableViewCell {

    @IBOutlet weak var aboutLabel: UILabel!
    
    var item: ProfileViewModelItem? {
        didSet {
            guard let item = item as? ProfileViewModelAboutItem else { return }
            
            aboutLabel?.text = item.about
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
