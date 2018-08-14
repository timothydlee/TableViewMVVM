//
//  FriendCell.swift
//  mvvm
//
//  Created by Timothy Lee on 8/12/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {
    @IBOutlet weak var friendImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var item: Friend? {
        didSet {
            guard let item = item else { return }
            if let pictureUrl = item.pictureUrl {
                friendImage?.image = UIImage(named: pictureUrl)
            }
            
            nameLabel?.text = item.name
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        friendImage?.layer.cornerRadius = 40
        friendImage?.clipsToBounds = true
        friendImage?.contentMode = .scaleAspectFit
        friendImage?.backgroundColor = .lightGray
    }
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
}
