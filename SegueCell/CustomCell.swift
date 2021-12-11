//
//  CustomCell.swift
//  SegueCell
//
//  Created by Motoki Onayama on 2021/06/01.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var setAppView: UIView!
    @IBOutlet weak var setAppLabel: UILabel!
    @IBOutlet weak var setAppSwitch: UISwitch!
    @IBOutlet weak var setAppImg: UIImageView!
    @IBOutlet weak var flagLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func valueSwitch(_ sender: UISwitch) {
        if sender.isOn {
            flagLbl.text = "表示"
            
        } else {
            flagLbl.text = "非表示"
        }
    }
}
