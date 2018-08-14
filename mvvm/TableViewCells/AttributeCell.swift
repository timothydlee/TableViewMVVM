//
//  AttributeCell.swift
//  mvvm
//
//  Created by Timothy Lee on 8/12/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class AttributeCell: UITableViewCell {

    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var item: Attribute? {
        didSet {
            titleLabel?.text = item?.key
            valueLabel?.text = item?.value
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
