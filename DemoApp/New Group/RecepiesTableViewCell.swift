//
//  RecepiesTableViewCell.swift
//  DemoApp
//
//  Created by Marija Sumakovic on 11/15/17.
//  Copyright © 2017 Marija Sumakovic. All rights reserved.
//

import UIKit

class RecepiesTableViewCell: UITableViewCell {

    @IBOutlet weak var recipesImage: UIImageView!
    @IBOutlet weak var recipesName: UILabel!
    @IBOutlet weak var shortDescription: UILabel!
    
    var recipes : Recipes?{
        didSet{
            updateUI()
        }
    }
    
    
    func updateUI(){
        recipesImage.image = UIImage(data:recipes?.image! as! Data,scale:1.0)
        recipesName.text = recipes?.title
        shortDescription.text = recipes?.shortText
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
