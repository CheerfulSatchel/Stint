//
//  TasksWrapperViewController.swift
//  Stint
//
//  Created by James Wu on 1/16/20.
//  Copyright © 2020 James Wu. All rights reserved.
//

import UIKit

final class TasksWrapperViewController: UIViewController {

  let tasksHeader = TasksHeaderViewController()
  let tasksList = TasksListViewController(collectionViewLayout: UICollectionViewFlowLayout())
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    view.backgroundColor = .green
    addTasksHeaderView()
    addTasksListView()
    
    applyTasksHeaderViewConstraints()
    applyTasksListViewConstraints()
  }
  
  private func addTasksHeaderView() {
    addChild(tasksHeader)
    view.addSubview(tasksHeader.view)
    tasksHeader.didMove(toParent: self)
    
  }
  
  private func addTasksListView() {
    addChild(tasksList)
    view.addSubview(tasksList.view)
    tasksList.didMove(toParent: self)
  }
  
  private func applyTasksHeaderViewConstraints() {
    tasksHeader.view.translatesAutoresizingMaskIntoConstraints = false
    
    // Top & bottom anchors
    tasksHeader.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    tasksHeader.view.bottomAnchor.constraint(equalTo: tasksList.view.topAnchor).isActive = true
    
    // Left & right anchors
    tasksHeader.view.leftAnchor.constraint(equalTo:
      view.safeAreaLayoutGuide.leftAnchor).isActive = true
    tasksHeader.view.leftAnchor.constraint(equalTo:
      view.safeAreaLayoutGuide.leftAnchor).isActive = true

    // Ensure header stretches across the width of screen
  tasksHeader.view.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
  
    // Ensure header occupies 1/4 of screen height
    let headerHeightConstraint = view.frame.height/4
    tasksHeader.view.heightAnchor.constraint(equalToConstant: headerHeightConstraint).isActive = true
  }
  
  private func applyTasksListViewConstraints() {
    tasksList.view.translatesAutoresizingMaskIntoConstraints = false
    
    // Top & bottom anchors
    tasksList.view.topAnchor.constraint(equalTo: tasksHeader.view.bottomAnchor).isActive = true
    tasksList.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    
    // Left & right anchors
    tasksList.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    tasksList.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    
    tasksList.view.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
  }

}
