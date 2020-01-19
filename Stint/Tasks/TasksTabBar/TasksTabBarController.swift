//
//  Tasks.swift
//  Stint
//
//  Created by James Wu on 1/12/20.
//  Copyright © 2020 James Wu. All rights reserved.
//

import UIKit

class TasksTabBarController: UITabBarController {

  let tasks = TasksWrapperViewController()
  let settings = UIViewController()
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    setupTabBarItems()
    loadSubviewsAboveTabBar()
  }
  
  private func setupTabBarItems() {
    let tasksItem = UITabBarItem()
    tasksItem.image = UIImage(named: "TasksIcon")
    tasks.tabBarItem = tasksItem
    
    let settingsItem = UITabBarItem()
    settingsItem.image = UIImage(named: "TasksIcon")
    settings.tabBarItem = settingsItem
    
    viewControllers = [tasks, settings]
    modalPresentationStyle = .fullScreen
  }
  
  private func loadSubviewsAboveTabBar() {
    //Credit: https://stackoverflow.com/a/19325718
    self.edgesForExtendedLayout = .all
    tasks.tasksList.collectionView.contentInset =
      UIEdgeInsets(top: 0.0, left: 0.0, bottom: tabBar.frame.height, right: 0.0)
  }

}
