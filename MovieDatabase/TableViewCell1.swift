//
//  TableViewCell1.swift
//  MovieDatabase
//
//  Created by N Manisha Reddy on 2/16/18.
//  Copyright © 2018 N Manisha Reddy. All rights reserved.
//

import UIKit

class TableViewCell1: UITableViewCell {

    @IBOutlet weak var dateTextField: UILabel!
   
    @IBOutlet weak var castTextField: UILabel!
    @IBOutlet weak var descriptionTextField: UILabel!
    @IBOutlet weak var nameTextField: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
