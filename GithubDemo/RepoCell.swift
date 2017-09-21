//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Paul Sokolik on 9/20/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starsImageView: UIImageView!
    @IBOutlet weak var forksImageView: UIImageView!
    @IBOutlet weak var thumbImageView: UIImageView!
    
    var repo: GithubRepo! {
        didSet {
            nameLabel.text = repo.name
            ownerLabel.text = repo.ownerHandle
            starsLabel.text = String(describing: repo.stars ?? 0)
            forksLabel.text = String(describing: repo.forks ?? 0)
            descriptionLabel.text = repo.repoDescription
            if repo.ownerAvatarURL != nil {
                let ownerPictureUrl = URL(string: repo.ownerAvatarURL!)
                thumbImageView.setImageWith(ownerPictureUrl!)
            }
            starsImageView.image = UIImage(named: "star")
            forksImageView.image = UIImage(named: "fork")
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
