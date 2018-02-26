//
//  CreateActivityViewController.swift
//  FineLucky
//
//  Created by Yu chengJhuo on 25/02/2018.
//  Copyright © 2018 Yu-cheng Jhuo. All rights reserved.
//

import UIKit

class CreateActivityViewController: UIViewController {
  
//  var myDatePicker: UIDatePicker!
//  let toolbar = UIToolbar();
  
  @IBOutlet weak var tableView : UITableView!
  
  let fields: [ModelFieldType] = [.title, .startedWorkDate, .endedWorkDate, .max, .description]
  
  let dateFields: [ModelFieldType] = [.startedWorkDate, .endedWorkDate]
  
  var datePickerIndexPath: IndexPath?
  var datePickerVisible: Bool { return datePickerIndexPath != nil }
  
  var item = FActivityViewModel()
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //self.tableView.allowsSelection = false
    self.tableView.tableFooterView = UIView()
    tableView!.register(UINib(nibName: "TextFieldWithTitleTableViewCell", bundle: nil), forCellReuseIdentifier: "TextFieldWithTitleIdentifier")
     tableView.register(UINib(nibName: "DatePickerTableViewCell", bundle: nil), forCellReuseIdentifier: "DatePickerTableViewCell")
    tableView.estimatedRowHeight = 90.0
    tableView.rowHeight = UITableViewAutomaticDimension
    
    
//    createUI()
  }
  
  
//  func createUI() {
//    myDatePicker = UIDatePicker(frame: CGRect(
//      x: 0, y: 0,
//      width: self.view.frame.width, height: 100))
//
//    // 設置 UIDatePicker 格式
//    myDatePicker.datePickerMode = .dateAndTime
//
//    // 選取時間時的分鐘間隔 這邊以 15 分鐘為一個間隔
//    myDatePicker.minuteInterval = 30
//
//    // 設置預設時間為現在時間
//    myDatePicker.date = Date()
//
//    // 設置 NSDate 的格式
//    let formatter = DateFormatter()
//
//    // 設置時間顯示的格式
//    formatter.dateFormat = "yyyy-MM-dd HH:mm"
//
//    // 可以選擇的最早日期時間
//    let fromDateTime = formatter.date(from: "2018-01-01 00:00")
//
//    // 設置可以選擇的最早日期時間
//    myDatePicker.minimumDate = fromDateTime
//
//    // 可以選擇的最晚日期時間
//    let endDateTime = formatter.date(from: "2020-12-31 00:00")
//
//    // 設置可以選擇的最晚日期時間
//    myDatePicker.maximumDate = endDateTime
//
//    // 設置顯示的語言環境
//    myDatePicker.locale = Locale(identifier: "zh_TW")
//
//    // 設置改變日期時間時會執行動作的方法
//    //myDatePicker.addTarget(self,action:#selector(CreateActivityViewController.datePickerChanged),
////    for: .valueChanged)
//
//    // 設置位置並加入到畫面中
//    myDatePicker.center = CGPoint(
//    x: self.view.frame.width * 0.5,
//    y: self.view.frame.height * 0.4)
//
//    //ToolBar
//    toolbar.sizeToFit()
//
//    let doneButton = UIBarButtonItem(title: "確定", style: .plain, target: self, action: #selector(donedatePicker));
//    let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
//    let cancelButton = UIBarButtonItem(title: "取消", style: .plain, target: self, action: #selector(cancelDatePicker));
//
//    toolbar.setItems([doneButton,spaceButton,cancelButton], animated: false)
//  }
  
//  @objc func donedatePicker() {
//
//  }
//  @objc func cancelDatePicker() {
//
//  }
}

extension CreateActivityViewController : UITableViewDelegate , UITableViewDataSource{
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return datePickerVisible ? 6 : 5
  }
  
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return "建立活動"
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    if datePickerVisible && datePickerIndexPath! == indexPath {
      let cell = self.tableView.dequeueReusableCell(withIdentifier: "DatePickerTableViewCell", for: indexPath) as! DatePickerTableViewCell
      cell.delegate = self
      
      // the field will correspond to the index of the row before this one.
      let field = fields[indexPath.row - 1]
      cell.configureWithField(field: field, currentDate: item.valueForField(field: field) as? Date)
      
      return cell
      
    } else {
      let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldWithTitleIdentifier", for: indexPath) as! TextFieldWithTitleTableViewCell
      cell.delegate = self
      let field = calculateFieldForIndexPath(indexPath: indexPath)
      
      cell.configureWithField(field: field, andValue: item.stringValueForField(field: field), editable: !dateFields.contains(field))
      
      return cell
    }
    
    
    
//    switch indexPath.row {
//    case 0:
//      cell.labTitle.text = "活動名稱"
//      cell.txtContent.placeholder = "請輸入活動名稱"
//      cell.txtContent.keyboardType = .default
//      cell.txtContent.inputView = nil
//      cell.labDescription.text = ""
//
//      break
//    case 1:
//      cell.labTitle.text = "開始時間"
//      cell.txtContent.placeholder = "2018/01/01 00:00:00"
//      cell.txtContent.inputView = myDatePicker
//      cell.labDescription.text = "為活動開始可參加抽獎時間"
//      break
//    case 2:
//      cell.labTitle.text = "結束時間"
//      cell.txtContent.placeholder = "2018/01/01 00:00:00"
//      cell.txtContent.inputView = myDatePicker
//      cell.labDescription.text = "停止參加活動的時間"
//      break
//    case 3:
//      cell.labTitle.text = "人數限制"
//      cell.txtContent.placeholder = "預設無上限"
//      cell.txtContent.keyboardType = .numberPad
//      cell.txtContent.inputView = nil
//      cell.labDescription.text = "可參加此活動的人數限制"
//      break
//    case 4:
//      cell.labTitle.text = "活動描敘"
//      cell.txtContent.placeholder = "預設無上限"
//      cell.txtContent.keyboardType = .default
//      cell.txtContent.inputView = nil
//      cell.labDescription.text = ""
//      break
//    default:
//      break
//
//    }
    
    
  }
  
//  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//    return 90
//  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    tableView.deselectRow(at: indexPath, animated: true)
    if !datePickerShouldAppearForRowSelectionAtIndexPath(indexPath: indexPath) {
      dismissDatePickerRow()
      return
    }
    
    self.view.endEditing(true)
    tableView.beginUpdates()
    if datePickerVisible {
      // close datepicker
      tableView.deleteRows(at: [datePickerIndexPath!], with: .fade)
      let oldDatePickerIndexPath = datePickerIndexPath!
      
      if datePickerIsRightBelowMe(indexPath: indexPath) {
        // just close the datepicker
        self.datePickerIndexPath = nil
      } else {
        // open it my new location
        let newRow = oldDatePickerIndexPath.row < indexPath.row ? indexPath.row : indexPath.row + 1
        self.datePickerIndexPath = IndexPath(row: newRow, section: indexPath.section)
        tableView.insertRows(at: [self.datePickerIndexPath!], with: .fade)
      }
    } else {
      self.datePickerIndexPath = IndexPath(row: indexPath.row + 1, section: indexPath.section)
      tableView.insertRows(at: [self.datePickerIndexPath!], with: .fade)
    }
    tableView.endUpdates()
    
  }
  
  
  func dismissDatePickerRow() {
    if !datePickerVisible { return }
    
    tableView.beginUpdates()
    tableView.deleteRows(at: [datePickerIndexPath!], with: .fade)
    datePickerIndexPath = nil
    tableView.endUpdates()
  }
  
  func datePickerShouldAppearForRowSelectionAtIndexPath(indexPath: IndexPath) -> Bool {
    let field = calculateFieldForIndexPath(indexPath: indexPath)
    return dateFields.contains(field)
  }
  
  func calculateFieldForIndexPath(indexPath: IndexPath) -> ModelFieldType {
    if datePickerVisible && datePickerIndexPath!.section == indexPath.section {
      if datePickerIndexPath!.row == indexPath.row { // we are the date picker. Pick the field below me
        return fields[indexPath.row - 1]
      } else if datePickerIndexPath!.row > indexPath.row { // we are "below" the date picker. Just return the field.
        return fields[indexPath.row]
      } else { // we are above the datePicker, so we should substract one from the current row index.
        return fields[indexPath.row - 1]
      }
    } else {
      // The date picker is not showing or not in my section, just return the usual field.
      return fields[indexPath.row]
    }
  }
  
  func datePickerIsRightBelowMe(indexPath: IndexPath) -> Bool {
    if datePickerVisible && datePickerIndexPath!.section == indexPath.section {
      if indexPath.section != datePickerIndexPath!.section { return false }
      else { return indexPath.row == datePickerIndexPath!.row - 1 }
    } else { return false }
  }
}

extension CreateActivityViewController : TextFieldWithTitleCellDelegate , DatePickerTableViewCellDelegate{

  func dateChangedForField(field: ModelFieldType, toDate date: Date) {
    print("Date changed for field \(field) to \(date)")
    item.setValue(value: date, forField: field)
    self.tableView.reloadData()
  }

  func field(field: ModelFieldType, changedValueTo value: String) {
    print("Value changed for field \(field) to \(value)")
    item.setValue(value: value, forField: field)
    self.tableView.reloadData()
  }
  
  func fieldDidBeginEditing(field: ModelFieldType) {
    dismissDatePickerRow()
  }
  
}
