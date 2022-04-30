//
//  PostTableViewCell.swift
//  ProjectMVVM
//
//  Created by Linder Anderson Hassinger Solano    on 30/04/22.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var lblLikes: UILabel!
    @IBOutlet weak var imagePost: UIImageView!
    @IBOutlet weak var lblUserName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageProfile.layer.cornerRadius = imageProfile.frame.size.width / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
