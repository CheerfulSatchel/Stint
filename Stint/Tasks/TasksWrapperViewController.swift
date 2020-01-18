//
//  TasksWrapperViewController.swift
//  Stint
//
//  Created by James Wu on 1/16/20.
//  Copyright © 2020 James Wu. All rights reserved.
//

import UIKit

class TasksWrapperViewController: UIViewController {

  let tasksHeader = TasksHeaderViewController()
  let tasksList = TasksCollectionViewController()
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = .green
    self.addTasksHeaderView()
  }
  
  func addTasksHeaderView() {
    self.addChild(self.tasksHeader)
    self.view.addSubview(self.tasksHeader.view)
    self.tasksHeader.didMove(toParent: self)
    applyTasksHeaderViewConstraints()
  }

  

  
  func applyTasksHeaderViewConstraints() {
    self.tasksHeader.view.translatesAutoresizingMaskIntoConstraints = false
      
    self.tasksHeader.view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
    
    // Ensure header stretches across the width of screen
    self.tasksHeader.view.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
    
    let headerHeightConstraint = self.view.frame.height/4
    self.tasksHeader.view.heightAnchor.constraint(equalToConstant: headerHeightConstraint).isActive = true
  }
  
  func addTasksCollectionView() {
    
  }
  

}
