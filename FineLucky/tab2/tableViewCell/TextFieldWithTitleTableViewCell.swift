//
//  TextFieldWithTitleTableViewCell.swift
//  FineLucky
//
//  Created by Yu chengJhuo on 25/02/2018.
//  Copyright © 2018 Yu-cheng Jhuo. All rights reserved.
//

import UIKit

class TextFieldWithTitleTableViewCell: UITableViewCell {
  
  @IBOutlet weak var labTitle : UILabel!
  @IBOutlet weak var labDescription : UILabel!
  @IBOutlet weak var txtContent : UITextField!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
}
