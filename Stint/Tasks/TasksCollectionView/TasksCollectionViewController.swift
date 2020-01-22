//
//  CollectionViewController.swift
//  Stint
//
//  Created by James Wu on 1/12/20.
//  Copyright © 2020 James Wu. All rights reserved.
//

import UIKit

private let cellReuseIdentifier = "taskItemIdentifier"

class TasksListViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
  
  var tasks: [Task] = []

  override func viewDidLoad() {
    super.viewDidLoad()
    
    preloadTasks()

    // Uncomment the following line to preserve selection between presentations
    // clearsSelectionOnViewWillAppear = false

    // Register cell classes
    collectionView!.register(TaskItemCollectionViewCell.self, forCellWithReuseIdentifier: cellReuseIdentifier)

    // Do any additional setup after loading the view.
    collectionView.backgroundColor = .white
    collectionView.alwaysBounceVertical = true
    view.backgroundColor = .magenta

  }

  // MARK: UICollectionViewDataSource

  override func numberOfSections(in collectionView: UICollectionView) -> Int {
      // Only one section containing the list itself
      return 1
  }


  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of items
    return tasks.count
  }

  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier:
        cellReuseIdentifier, for: indexPath) as! TaskItemCollectionViewCell
    
    cell.task = tasks[indexPath.row]
    cell.addTaskToView()

    cell.backgroundColor = .black
    return cell
  }

  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let itemWidth = view.frame.width * 0.9
    let itemHeight = view.frame.height * 0.25
    return .init(width: itemWidth, height: itemHeight)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 1.0, left: 1.0, bottom: 1.0, right: 1.0)
  }
  
  private func preloadTasks() {
    let taskNames = [
      "Afternoon stroll with friends through the sunny meadows",
      "Volunteer at soup kitchen",
      "Cook ramen"
    ]
    
    for taskName in taskNames {
      let startDate = Date()
      let endDate = Date()
      let urgency: Urgency = .medium
      let repeatTime: RepeatTime = .daily
      let isComplete: Bool = false
      let task = Task(name: taskName, startDate: startDate, endDate: endDate, urgency: urgency, repeatTime: repeatTime, isComplete: isComplete)

      tasks.append(task)
    }
  }
    
}
