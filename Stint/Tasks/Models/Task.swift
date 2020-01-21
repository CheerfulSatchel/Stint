//
//  Task.swift
//  Stint
//
//  Created by James Wu on 1/19/20.
//  Copyright © 2020 James Wu. All rights reserved.
//

import Foundation

struct Task {
  var name: String
  var startDate: Date
  var endDate: Date
  var urgency: Urgency
  var repeatTime: RepeatTime
  var isComplete: Bool
}

enum RepeatTime {
  case daily
  case weekly
  case monthly
}

enum Urgency {
  case none
  case low
  case medium
  case high
}
