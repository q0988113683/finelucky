//
//  FActivityViewModel.swift
//  FineLucky
//
//  Created by Yu chengJhuo on 26/02/2018.
//  Copyright © 2018 Yu-cheng Jhuo. All rights reserved.
//

import UIKit

enum ModelFieldType: String {
  case title = "活動名稱"
//  case email = "email"
  case startedWorkDate = "開始時間"
  case endedWorkDate = "結束時間"
//  case phoneNumber = "phone number"
//  case image = "image"
//  case maritalStatus = "marital status"
//  case address = "address"
//  case userId = "user Id"
//  case password = "password"
  case max = "人數限制"
  case description = "活動描敘"
}
struct FActivityViewModel {

  var title: String! = ""
  var description: String! = ""
  var startedDate: Date! = Date()
  var endedDate: Date! = Date()
  var max = 0

  func valueForField(field: ModelFieldType) -> Any {
    switch field {
    case .title: return title
    case .description: return description
    case .startedWorkDate: return startedDate
    case .endedWorkDate: return endedDate
    case .max: return max
    }
  }
  
  func stringValueForField(field: ModelFieldType) -> String {
    if field == .startedWorkDate {
      guard let date = startedDate else { return "-" }
      return FActivityViewModel.dateStringFromDate(date: date)
    } else if field == .endedWorkDate {
      guard let date = endedDate else { return "-" }
      return FActivityViewModel.dateStringFromDate(date: date)
    } else { return valueForField(field: field) as? String ?? "-" }
  }
  
  
  mutating func setValue(value: Any, forField field: ModelFieldType) {
    switch field {
    case .title: if let title = value as? String { self.title = title }
    case .startedWorkDate:
      if let startedWorkDate = value as? Date { self.startedDate = startedWorkDate }
      else if let swString = value as? String, let swFromString = FActivityViewModel.dateFromString(dateString: swString) { self.startedDate = swFromString }
    case .endedWorkDate:
      if let endedWorkDate = value as? Date { self.endedDate = endedWorkDate }
      else if let ewString = value as? String, let ewFromString = FActivityViewModel.dateFromString(dateString: ewString) { self.endedDate = ewFromString }
        case .description: if let des = value as? String { self.description = des }
     case .max: if let max = value as? Int { self.max = max }
    
    }
  }
  
  
  
  static var _dateFormatter: DateFormatter?
  fileprivate static var dateFormatter: DateFormatter {
    if (_dateFormatter == nil) {
      _dateFormatter = DateFormatter()
      _dateFormatter!.locale = Locale(identifier: "zh_TW")
      _dateFormatter!.dateFormat = "yyyy/MM/dd HH:mm"
    }
    return _dateFormatter!
  }
  static func dateFromString(dateString: String) -> Date? {
    return dateFormatter.date(from: dateString)
  }
  static func dateStringFromDate(date: Date) -> String {
    return dateFormatter.string(from: date)
  }
  
}
