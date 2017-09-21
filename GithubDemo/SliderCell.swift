//
//  SliderCell.swift
//  GithubDemo
//
//  Created by Paul Sokolik on 9/20/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SliderCell: UITableViewCell {

    @IBOutlet weak var starsSlider: UISlider!
    @IBOutlet weak var starCountLabel: UILabel!
    
    override func awakeFromNib() {
        starCountLabel.text = String(Int(starsSlider.value))
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func onSlide(_ sender: Any) {
        starCountLabel.text = String(Int(starsSlider.value))
    }
    
}
