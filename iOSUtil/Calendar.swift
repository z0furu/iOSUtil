//
//  Calendar.swift
//  CGM
//
//  Created by wade on 2018/7/14.
//  Copyright © 2018年 BionimeIOT. All rights reserved.
//

import Foundation

extension Calendar {
  
  func getUTCDate() -> Calendar{
  
    var currentCalendar = NSCalendar.current
    currentCalendar.timeZone = TimeZone(identifier: "UTC")!
    
    return currentCalendar
  }
  
}
