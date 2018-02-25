//
//  ShareMethod.swift
//  CloudsHospital
//
//  Created by Yu chengJhuo on 6/29/17.
//  Copyright © 2017 Yu-cheng Jhuo. All rights reserved.
//

import UIKit



class ShareMethod: NSObject {
  
  static func SetRefreshControl() -> UIRefreshControl{
    let refreshControl = UIRefreshControl()
    refreshControl.backgroundColor = UIColor.clear
    refreshControl.tintColor = UIColor(red: 252.0/255.0, green: 169.0/255.0, blue: 119.0/255.0, alpha: 1)
    return refreshControl
  }
  
  
  static func GetMainStoryBoard() -> UIStoryboard{
    return UIStoryboard(name: "Main", bundle: nil);
  }

//
//  static func CreateCloseButton(_ target:AnyObject?, action: Selector) -> UIBarButtonItem{
//    //create a new button
//    let button: UIButton = UIButton(type: UIButtonType.custom)
//    //set image for button
//    button.setImage(UIImage(named: "ExportBtn.png"), for: UIControlState())
//    //add function for button
//    button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
//    //set frame
//    button.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
//
//    return UIBarButtonItem(customView: button)
//  }
//
//  static func CreateLogoButton(_ target:AnyObject?, action: Selector) -> UIBarButtonItem{
//    //create a new button
//    let button: UIButton = UIButton(type: UIButtonType.custom)
//    //set image for button
//    button.setImage(UIImage(named: "ArrowBtnBlueLeft.png"), for: UIControlState())
//    //add function for button
//    button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
//    //set frame
//    button.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
//    button.tintColor = UIColor(red: 0/255.0, green: 137.0/255.0, blue: 159.0/255.0, alpha: 1.0)
//    button.setTitle("返回首頁", for: .normal)
//    button.setTitleColor(UIColor(red: 0/255.0, green: 137.0/255.0, blue: 159.0/255.0, alpha: 1.0), for: .normal)
//    return UIBarButtonItem(customView: button)
//  }
//
//
//
//  static func CreateBackButton(_ target:AnyObject?, action: Selector) -> UIBarButtonItem{
//    //create a new button
//    let button: UIButton = UIButton(type: UIButtonType.custom)
//    //set image for button
//    button.setImage(UIImage(named: "icon_back_2.png"), for: UIControlState())
//    //add function for button
//    button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
//    //set frame
//    button.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
//
//    return UIBarButtonItem(customView: button)
//  }
//
//  static func CreateNext(_ target:AnyObject?, action: Selector) -> UIBarButtonItem{
//    let btn = UIBarButtonItem(title: "下一步", style: .plain, target: target, action: action)
//    btn.tintColor = UIColor.white
//    return btn
//  }
//  static func CreateFinish(_ target:AnyObject?, action: Selector) -> UIBarButtonItem{
//    let btn = UIBarButtonItem(title: "完成", style: .plain, target: target, action: action)
//    btn.tintColor = UIColor.white
//    return btn
//  }
//  static func CreateReservation(_ target:AnyObject?, action: Selector) -> UIBarButtonItem{
//    let btn = UIBarButtonItem(title: "查看我的預約行事曆", style: .plain, target: target, action: action)
//    btn.tintColor = UIColor(red: 0/255.0, green: 137.0/255.0, blue: 159.0/255.0, alpha: 1.0)
//    btn.setTitleTextAttributes([
//      NSFontAttributeName : UIFont(name: "Helvetica-Bold", size: 13)!
//      ], for: .normal)
//    return btn
//  }
//  static func CreateAdd(_ target:AnyObject?, action: Selector) -> UIBarButtonItem{
//
//    let button: UIButton = UIButton(type: UIButtonType.custom)
//    //set image for button
//    button.setImage(UIImage(named: "AddedBtn03.png"), for: UIControlState())
//    //add function for button
//    button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
//    //set frame
//    button.frame = CGRect(x: 0, y: 0, width: 19, height: 19)
//
//    return UIBarButtonItem(customView: button)
//  }
//
//  static func CreateButtonOnNav(_ title:String ,_ target:AnyObject?, action: Selector , isClose:Bool) -> UIBarButtonItem{
//
//    let button = UIButton(type: .system)
//    button.setTitle(title, for: .normal)
//    button.setTitleColor(UIColor(red: 0/255.0, green: 137.0/255.0, blue: 159.0/255.0, alpha: 1.0), for: .normal)
//    button.tintColor = UIColor(red: 0/255.0, green: 137.0/255.0, blue: 159.0/255.0, alpha: 1.0)
//    //button.semanticContentAttribute = .forceRightToLeft
//    button.sizeToFit()
//    button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
//    if (isClose){
//      button.setImage(UIImage(named: "ArrowBtnBlue.png"), for: .normal)
//    }else{
//      button.setImage(UIImage(named: "ArrowBtnBlue01.png"), for: .normal)
//    }
//    button.alignImageRight()
//    return UIBarButtonItem(customView: button)
//  }
//
//
//
//
//
//  static func GetDatefromMorningToNight() -> TodayViewModel{
//    let date = Date()
//    let formatter = DateFormatter()
//    formatter.dateFormat = "yyyy/MM/dd 00:00:00"
//    let str1 = formatter.string(from: date)
//    let DayMorning = formatter.date(from: str1)
//    let calendar = NSCalendar.current
//    let DayNight = calendar.date(byAdding: .day, value: 1, to: DayMorning!)
//    return TodayViewModel(morning: DayMorning!, night: DayNight!)
//  }
//
//
//
//  static func GetNowDateStr()->String{
//    let date = Date()
//    let formatter = DateFormatter()
//    formatter.dateFormat = "yyyy/MM/dd"
//    return formatter.string(from: date)
//  }
//
//  static func GetFileName()->String{
//    let date = Date()
//    let formatter = DateFormatter()
//    formatter.dateFormat = "yyyyMMdd_HHmmss"
//    return formatter.string(from: date)
//  }
//
//  static func GetNowCustomeTimeStr(date:Date) -> String{
//    let formatter = DateFormatter()
//    formatter.dateFormat = "yyyy/MM/dd "
//    let str1 =  formatter.string(from: date)
//
//    let myCalendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)!
//    let myComponents = myCalendar.components(.weekday, from: date)
//    let week = myComponents.weekday
//
//    let formatter1 = DateFormatter()
//    formatter1.dateFormat = " HH:mm"
//    let str2 =  formatter1.string(from: date)
//
//    return str1 + GetChineseWeekDay(day: week!) + str2
//  }
//
//  static func ConvertTimeToDateTime(time:String) -> Date{
//
//    let dateTimeStr = self.GetNowDateStr() + " " + time + ":00"
//
//    let formatter = DateFormatter()
//    formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
//    let dateTime =  formatter.date(from: dateTimeStr)
//
//    return dateTime!
//  }
//
//
//  static func ConvertStringToData(dateStr:String) -> Date{
//    let formatter = DateFormatter()
//    formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
//    return formatter.date(from: dateStr)!
//  }
//  static func ConvertStringToDataWithT(dateStr:String) -> Date{
//    let formatter = DateFormatter()
//    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
//    let date = formatter.date(from: dateStr)
//    return date!
//  }
//
//  static func GetAge(birthday:Date) -> Int {
//    let date = Date()
//    let calendar = Calendar.current
//    let yearNow = calendar.component(.year, from: date)
//    let yearBir = calendar.component(.year, from: birthday)
//    return yearNow - yearBir
//  }
//
//  static func Get30Minute(date:Date) -> String{
//
//    let formatter1 = DateFormatter()
//    formatter1.dateFormat = "HH:mm"
//    let str1 =  formatter1.string(from: date)
//    let dateNew = date.add(years: 0, months: 0, days: 0, hours: 0, minutes: 30, seconds: 0)
//    let str2 =  formatter1.string(from: dateNew)
//    return str1 + " ~ " + str2
//  }
//
//  static func GetChineseWeekDay(day:Int) -> String {
//    var dayStr = "";
//    switch day {
//    case 1:
//      dayStr = "(日)"
//      break;
//    case 2:
//      dayStr = "(一)"
//      break;
//    case 3:
//      dayStr = "(二)"
//      break;
//    case 4:
//      dayStr = "(三)"
//      break;
//    case 5:
//      dayStr = "(四)"
//      break;
//    case 6:
//      dayStr = "(五)"
//      break;
//    case 7:
//      dayStr = "(六)"
//      break;
//    default:
//      break
//    }
//    return dayStr
//  }
//
//  static func showToast(message:String){
//    UIApplication.shared.keyWindow?.makeToast(message: message)
//  }
//
//
//  static func alertPLView(_ msg:String , view:UIViewController){
//
//    let alert = PLAlertViewController(title: msg, SuccessCompletion: {
//      () in
//    })
//    view.present(alert, animated: true, completion: nil)
//  }
//    static func alertPLViewWithColor(_ msg:String , color : UIColor ,  view:UIViewController){
//
//        let alert = PLAlertViewController(title: msg, color:color ,  SuccessCompletion: {
//            () in
//        })
//        view.present(alert, animated: true, completion: nil)
//    }
//
//  static func alertMsg(_ titleStr:String , msg:String , view:UIViewController){
//    let alert = UIAlertController(title: titleStr, message: msg, preferredStyle: UIAlertControllerStyle.alert)
//    alert.addAction(UIAlertAction(title: "確認", style: UIAlertActionStyle.default, handler: nil))
//    view.present(alert, animated: true, completion: nil)
//  }
//
//  static func alertMsg(_ titleStr:String , msg:String , view:UIViewController , submitHandler: @escaping () -> ()){
//    let alert = UIAlertController(title: titleStr, message: msg, preferredStyle: UIAlertControllerStyle.alert)
//    alert.addAction(UIAlertAction(title: "確認", style: .default) { action in
//      // perhaps use action.title here
//      submitHandler()
//    })
//    view.present(alert, animated: true, completion: nil)
//  }
//
//  static func alertMsg(_ titleStr:String , msg:String , view:UIViewController , submitHandler: @escaping () -> () , cancelHandler: @escaping () -> ()){
//
//    let alert = UIAlertController(title: titleStr, message: msg, preferredStyle: UIAlertControllerStyle.alert)
//
//    alert.addAction(UIAlertAction(title: "確認", style: .default) { action in
//      // perhaps use action.title here
//      submitHandler()
//    })
//    alert.addAction(UIAlertAction(title: "取消", style: .default) { action in
//      // perhaps use action.title here
//      cancelHandler()
//    })
//
//    view.present(alert, animated: true, completion: nil)
//
//  }
//
//    static func alertMsgWithWaring(_ titleStr:String , msg:String , view:UIViewController , submitHandler: @escaping () -> () , cancelHandler: @escaping () -> ()){
//
//        let alert = UIAlertController(title: titleStr, message: msg, preferredStyle: UIAlertControllerStyle.alert)
//
//        alert.addAction(UIAlertAction(title: "重填", style: .default) { action in
//            // perhaps use action.title here
//            cancelHandler()
//        })
//        alert.addAction(UIAlertAction(title: "確定", style: .default) { action in
//            // perhaps use action.title here
//            submitHandler()
//        })
//
//
//        view.present(alert, animated: true, completion: nil)
//
//    }
//
//  static  func GetDocumentsDirectory(pathType : PathType) -> URL {
//    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
//    let documentsDirectory = paths[0]
//    return documentsDirectory.appendingPathComponent(pathType.rawValue)
//  }
//
//  static  func SavePhotoToTemp(image:UIImage){
//    let url = self.GetDocumentsDirectory(pathType: .Photo)
//    if let data = UIImageJPEGRepresentation(image, 0.5) {
//      let filename = url.appendingPathComponent("temp.jpg")
//      try? data.write(to: filename)
//    }
//  }
//
//  static func SavePhotoToFolder(image:UIImage) -> String{
//    let url = self.GetDocumentsDirectory(pathType: .Photo)
//
//    if let data = UIImageJPEGRepresentation(image, 0.5) {
//
//      let photoName = ShareData.sharedInstance().user!.dbid.value.description + "_" + self.GetFileName() + ".jpg"
//
//      let filename = url.appendingPathComponent(photoName)
//      try? data.write(to: filename)
//      return photoName
//    }
//    return ""
//  }
//
//  static  func SavePhotoToFolderFromTemp() -> String{
//    let url = self.GetDocumentsDirectory(pathType: .Photo)
//    let filename = url.appendingPathComponent("temp.jpg")
//    let image = UIImage(contentsOfFile: filename.path)
//    if (image != nil){
//      //let image = UIImage(contentsOfFile: filename.absoluteString)
//      return self.SavePhotoToFolder(image: image!)
//    }
//    return ""
//  }
//
//   static func resizeImage(image: UIImage, newWidth: CGFloat) -> UIImage {
//
//        let scale = newWidth / image.size.width
//        let newHeight = image.size.height * scale
//
//        UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
//
//
//        image.draw(in: CGRect(x: 0, y: 0,width: newWidth, height: newHeight))
//        let newImage = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//
//        return newImage!
//    }
//
//  static  func SaveRecordToFolderFromTemp() -> String{
//
//    let fileName =  ShareData.sharedInstance().user!.dbid.value.description + "_" + self.GetFileName() + ".m4a"
//    do {
//      let originPath = ShareMethod.GetDocumentsDirectory(pathType: .VoiceRecord).appendingPathComponent("RecoreTemp.m4a")
//      let destinationPath = ShareMethod.GetDocumentsDirectory(pathType: .VoiceRecord).appendingPathComponent(fileName)
//      try FileManager.default.moveItem(at: originPath, to: destinationPath)
//      return fileName
//    } catch {
//      print(error)
//    }
//    return ""
//  }
//
//  static func ConvertDatefromTwDate(twDate:String) -> Date? {
//    let fmt = DateFormatter()
//    //fmt.locale = Locale(identifier: "zh-Tw_POSIX")
//    fmt.dateStyle = .full
//    fmt.dateFormat = "yyyMMdd"
//
//    let rocCal = Calendar(identifier: Calendar.Identifier.republicOfChina)
//    fmt.calendar = rocCal
//    return fmt.date(from: twDate)
//
//    // "民國104年6月3日 星期三"
//  }
//
//  static func ConvertDataFromMedicalUI(medicalUiItem:[MedicalUIMainViewModel] , medicalItem : MedicalViewModel , specialNoteA : String = "" , specialNoteB : String = "") -> MedicalViewModel{
//    var detail : [MedicalDetailViewModel] = []
//    for item in medicalUiItem{
//      if let itemD =  item as? MedicalUIDetailViewModel{
//        if (itemD.isCheck){
//          let detailD = MedicalDetailViewModel()
//          detailD.dose.value = Double(itemD.dose.value)!
//          detailD.medicineid.value = itemD.medicalItem!.dbId
//          detailD.drugPoint.value = itemD.drugPoint
//          if (itemD.medicalItem!.specialSw.contains("A:")){
//            detailD.specialNote.value = specialNoteA
//          }else if (itemD.medicalItem!.specialSw.contains("B:")){
//            detailD.specialNote.value = specialNoteB
//          }
//          detail.append(detailD)
//        }
//      }
//    }
//    medicalItem.medicalDetail.value = detail
//    return medicalItem
//  }
//
//  static func GetWebUrl(index:Int) -> String {
//
//    var userid = ""
//    if (ShareData.sharedInstance().user != nil){
//      userid  = ShareData.sharedInstance().user!.dbid.value.description
//    }
//
//
//    switch index {
//    case 1:
//      //日常紀錄
//      return ShareAppAPI.webUrl + "Record/DailyRecord/" + userid
//
//    case 2:
//      //紀錄-血糖
//      return ShareAppAPI.webUrl + "record/bloodGlucose/" + userid
//
//    case 3:
//      //紀錄-血壓
//      return ShareAppAPI.webUrl + "record/bloodPressure/" + userid
//
//    case 4:
//      //紀錄-用藥紀錄
//      return ShareAppAPI.webUrl + "record/medication/"  + userid
//
//    case 5:
//      //紀錄-檢驗報告
//       return ShareAppAPI.webUrl + "record/test/" + userid
//
//    case 6:
//      //紀錄-體重
//      return ShareAppAPI.webUrl + "record/bmi/" + userid
//
//    case 7:
//      //紀錄-服藥
//      return ShareAppAPI.webUrl + "record/medicine/" + userid
//
//    case 8:
//      //紀錄-飲食
//      return ShareAppAPI.webUrl + "record/diet/" + userid
//
//    case 9:
//      //紀錄-運動
//      return ShareAppAPI.webUrl + "record/campaign/" + userid
//
//    case 10:
//      //紀錄-睡眠
//      return ShareAppAPI.webUrl + "record/sleep/" + userid
//
//    case 11:
//      //紀錄-排泄
//      return ShareAppAPI.webUrl + "record/excretion/" + userid
//
//    case 12:
//      //紀錄-心情
//      return ShareAppAPI.webUrl + "record/mood/" + userid
//
//    case 13:
//      //生命故事書
//      return ShareAppAPI.webUrl + "record/lifeStory/" + userid
//
//    case 14:
//      //預約行事曆 http://demo.kidtech.com.tw:81/TpechVirtualHospital/OpeningHoursDr/OpeningHours_Dr
//      return ShareAppAPI.webUrl + "OpeningHoursDr/OpeningHours_Dr"
//
//    case 15:
//      //文字諮詢
//      return ShareAppAPI.webUrl + "Consultation"
//
//    case 16:
//      //衛教新知
//      return ShareAppAPI.webUrl + "w/tpech/HealthInfo"
//
//    case 17:
//      //親友端-日常紀錄
//      return ShareAppAPI.webUrl + "Record/DailyRecord"
//
//    case 18:
//      //親友端-文字諮詢
//      return ShareAppAPI.webUrl + "Consultation"
//
//    case 19:
//      //定位地圖
//      return ShareAppAPI.webUrl + "Record/Map"
//    case 20:
//        //最新消息
//        return ShareAppAPI.webUrl + "w/tpech/News"
//    case 21:
//      //平台介紹
//      return ShareAppAPI.webUrl + "w/Tpech/Introduction"
//    case 22:
//      //活動/課程
//      return ShareAppAPI.webUrl + "w/tpech/Activity"
//    case 23:
//      //聯合醫院
//      return ShareAppAPI.webUrl + "w/Tpech/about"
//    case 24:
//      //聯絡我們
//      return ShareAppAPI.webUrl + "w/Tpech/ContactUS"
//    case 25:
//      //使用教學
//      return ShareAppAPI.webUrl + "w/Tpech/teach"
//    case 26:
//      //檢查
//      return ShareAppAPI.webUrl + "record/check/" + userid
//    case 27:
//      //線上掛號
//      return "http://webreg.tpech.gov.tw/RegOnline1.aspx"
//    case 29:
//      //衛教諮詢
//      return ShareAppAPI.webUrl + "w/tpech/HealthInfo"
//    case 98:
//        //會員登出
//        return  ShareAppAPI.webUrl + "Members/Logout"
//    default:
//      break
//    }
//    return ShareAppAPI.webUrl + "w/tpech/News"
//  }
//
//  static func GetButtonName(index:Int) -> String {
//    switch index {
//    case 1:
//      //日常紀錄
//      return "日常紀錄"
//    case 2:
//      //紀錄-血糖
//      return "血糖"
//
//    case 3:
//      //紀錄-血壓
//      return "血壓"
//
//    case 4:
//      //紀錄-用藥紀錄
//      return "用藥紀錄"
//
//    case 5:
//      //紀錄-檢驗報告
//      return "檢驗報告"
//
//    case 6:
//      //紀錄-體重
//      return "BMI"
//
//    case 7:
//      //紀錄-服藥
//      return "服藥"
//
//    case 8:
//      //紀錄-飲食
//      return "飲食"
//
//    case 9:
//      //紀錄-運動
//      return "運動"
//
//    case 10:
//      //紀錄-睡眠
//      return "睡眠"
//
//    case 11:
//      //紀錄-排泄
//      return "排泄"
//
//    case 12:
//      //紀錄-心情
//      return "心情"
//
//    case 13:
//      //生命故事書
//      return "生命故事書"
//
//    case 14:
//      //預約行事曆
//      return "預約行事曆"
//
//    case 15:
//      //文字諮詢
//      return "文字諮詢"
//
//    case 16:
//      //衛教新知
//      return "衛教新知"
//
//    case 17:
//      //親友端-日常紀錄
//      return "日常紀錄"
//
//    case 18:
//      //親友端-文字諮詢
//      return "文字諮詢"
//    case 19:
//      //定位地圖
//      return "定位地圖"
//    case 20:
//        //最新消息
//        return "最新消息"
//    case 21:
//        //平台介紹
//        return "平台介紹"
//    case 22:
//        //活動/課程
//        return "活動課程"
//    case 23:
//        //聯合醫院
//        return "聯合醫院"
//    case 24:
//        //聯絡我們
//        return "聯絡我們"
//    case 25:
//        //使用教學
//        return "使用教學"
//    case 26:
//      //檢查
//      return "檢查"
//    case 27:
//      //線上掛號
//      return "線上掛號"
//
//    case 28:
//      // 立即諮詢
//      return "立即諮詢"
//    case 29:
//      //衛教諮詢
//      return "衛教諮詢"
//    default:
//      break
//    }
//    return ""
//  }
//
//
//
//
//
//  static func GoToLoginView(view:UIViewController){
//    let storyboard = ShareMethod.GetMainStoryBoard()
//    let vc  = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
//    view.present(vc, animated: true, completion: nil)
//  }
  
// static func random(_ n: Int) -> String
//  {
//    let a = "1234567890"
//
//    var s = ""
//
//    for _ in 0..<n
//    {
//      let r = Int(arc4random_uniform(UInt32(a.characters.count)))
//
//      s += String(a[a.index(a.startIndex, offsetBy: r)])
//    }
//
//    return s
//  }
}



