//
//  TextFieldWithTitleTableViewCell.swift
//  FineLucky
//
//  Created by Yu chengJhuo on 25/02/2018.
//  Copyright © 2018 Yu-cheng Jhuo. All rights reserved.
//

import UIKit

protocol TextFieldWithTitleCellDelegate: class {
  func fieldDidBeginEditing(field: ModelFieldType)
  func field(field: ModelFieldType, changedValueTo value: String)
}

class TextFieldWithTitleTableViewCell: UITableViewCell, UITextFieldDelegate {
  
  @IBOutlet weak var labTitle : UILabel!
  @IBOutlet weak var labDescription : UILabel!
  @IBOutlet weak var txtContent : UITextField!
  
  // data
  var field: ModelFieldType!
  weak var delegate: TextFieldWithTitleCellDelegate?
  
  override func awakeFromNib() {
    super.awakeFromNib()
    txtContent.delegate = self
  }
  
  @IBAction func valueChanged(_ sender: UITextField) {
    self.delegate?.field(field: field, changedValueTo: sender.text ?? "")
  }
  
  func configureWithField(field: ModelFieldType, andValue value: String?, editable: Bool) {
    self.field = field
    self.labTitle.text = self.field.rawValue
    self.txtContent.text = value ?? ""
    
    if editable {
      self.txtContent.isUserInteractionEnabled = true
      self.selectionStyle = .none
    } else {
      self.txtContent.isUserInteractionEnabled = false
      self.selectionStyle = .default
    }
  }
  
  func textFieldDidBeginEditing(_ textField: UITextField) {
    self.delegate?.fieldDidBeginEditing(field: field)
  }
}
