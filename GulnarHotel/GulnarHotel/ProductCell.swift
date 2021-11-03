//
//  ProductCell.swift
//  GulnarHotel
//
//  Created by العــفاف . on 25/03/1443 AH.
//

import UIKit

class ProductCell: UITableViewCell {

    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var MasterSuite: UILabel!
    @IBAction func ShowMore(_ sender: Any) {
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
