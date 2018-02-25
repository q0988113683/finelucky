//
//  CreateActivityViewController.swift
//  FineLucky
//
//  Created by Yu chengJhuo on 25/02/2018.
//  Copyright © 2018 Yu-cheng Jhuo. All rights reserved.
//

import UIKit

class CreateActivityViewController: UIViewController {
  
  var myDatePicker: UIDatePicker!
  let toolbar = UIToolbar();
  
  @IBOutlet weak var tableView : UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.tableView.allowsSelection = false
    
    tableView!.register(UINib(nibName: "TextFieldWithTitleTableViewCell", bundle: nil), forCellReuseIdentifier: "TextFieldWithTitleIdentifier")
    
    self.tableView.tableFooterView = UIView()
    
    createUI()
  }
  
  func createUI() {
    myDatePicker = UIDatePicker(frame: CGRect(
      x: 0, y: 0,
      width: self.view.frame.width, height: 100))
    
    // 設置 UIDatePicker 格式
    myDatePicker.datePickerMode = .dateAndTime
    
    // 選取時間時的分鐘間隔 這邊以 15 分鐘為一個間隔
    myDatePicker.minuteInterval = 30
    
    // 設置預設時間為現在時間
    myDatePicker.date = Date()
    
    // 設置 NSDate 的格式
    let formatter = DateFormatter()
    
    // 設置時間顯示的格式
    formatter.dateFormat = "yyyy-MM-dd HH:mm"
    
    // 可以選擇的最早日期時間
    let fromDateTime = formatter.date(from: "2018-01-01 00:00")
    
    // 設置可以選擇的最早日期時間
    myDatePicker.minimumDate = fromDateTime
    
    // 可以選擇的最晚日期時間
    let endDateTime = formatter.date(from: "2020-12-31 00:00")
    
    // 設置可以選擇的最晚日期時間
    myDatePicker.maximumDate = endDateTime
    
    // 設置顯示的語言環境
    myDatePicker.locale = Locale(identifier: "zh_TW")
    
    // 設置改變日期時間時會執行動作的方法
    //myDatePicker.addTarget(self,action:#selector(CreateActivityViewController.datePickerChanged),
    for: .valueChanged)
    
    // 設置位置並加入到畫面中
    myDatePicker.center = CGPoint(
    x: self.view.frame.width * 0.5,
    y: self.view.frame.height * 0.4)
    
    //ToolBar
    toolbar.sizeToFit()
    
    let doneButton = UIBarButtonItem(title: "確定", style: .plain, target: self, action: #selector(donedatePicker));
    let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
    let cancelButton = UIBarButtonItem(title: "取消", style: .plain, target: self, action: #selector(cancelDatePicker));
    
    toolbar.setItems([doneButton,spaceButton,cancelButton], animated: false)
  }
  
  @objc func donedatePicker() {
    
  }
  @objc func cancelDatePicker() {
    self.myDatePicker
  }
}

extension CreateActivityViewController : UITableViewDelegate , UITableViewDataSource{
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
  }
  
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return "建立活動"
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldWithTitleIdentifier", for: indexPath) as! TextFieldWithTitleTableViewCell
    
    
    switch indexPath.row {
    case 0:
      cell.labTitle.text = "活動名稱"
      cell.txtContent.placeholder = "請輸入活動名稱"
      cell.txtContent.keyboardType = .default
      cell.txtContent.inputView = nil
      cell.labDescription.text = ""
      
      break
    case 1:
      cell.labTitle.text = "開始時間"
      cell.txtContent.placeholder = "2018/01/01 00:00:00"
      cell.txtContent.inputView = myDatePicker
      cell.labDescription.text = "為活動開始可參加抽獎時間"
      break
    case 2:
      cell.labTitle.text = "結束時間"
      cell.txtContent.placeholder = "2018/01/01 00:00:00"
      cell.txtContent.inputView = myDatePicker
      cell.labDescription.text = "停止參加活動的時間"
      break
    case 3:
      cell.labTitle.text = "人數限制"
      cell.txtContent.placeholder = "預設無上限"
      cell.txtContent.keyboardType = .numberPad
      cell.txtContent.inputView = nil
      cell.labDescription.text = "可參加此活動的人數限制"
      break
    case 4:
      cell.labTitle.text = "活動描敘"
      cell.txtContent.placeholder = "預設無上限"
      cell.txtContent.keyboardType = .default
      cell.txtContent.inputView = nil
      cell.labDescription.text = ""
      break
    default:
      break
      
    }
    
    return cell
    
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 90
  }
  
}
