//
//  NamePictureCell.swift
//  mvvm
//
//  Created by Timothy Lee on 8/12/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class NamePictureCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pictureImageView: UIImageView!
    
    var item: ProfileViewModelItem? {
        didSet {
            guard let item = item as? ProfileViewModelNameAndPictureItem else { return }
            nameLabel?.text = item.userName
            pictureImageView?.image = UIImage(named: item.pictureUrl)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        pictureImageView?.layer.cornerRadius = 50
        pictureImageView?.clipsToBounds = true
        pictureImageView?.contentMode = .scaleAspectFit
        pictureImageView?.backgroundColor = .lightGray
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
}
