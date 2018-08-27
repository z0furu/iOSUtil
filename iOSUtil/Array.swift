//
//  Array.swift
//  BionimeUtils
//
//  Created by wade on 2018/8/21.
//  Copyright © 2018年 bionime. All rights reserved.
//

import Foundation

extension Array where Element: Codable {
  func getJSON() -> String? {
    let encoder = JSONEncoder()
    guard let data = try? encoder.encode(self) else { return nil }
    return String(data: data, encoding: .utf8)
  }
  
  func fromByteArray() -> Int {
    return self.withUnsafeBytes {
      $0.baseAddress!.load(as: Int.self)
    }
  }
}
