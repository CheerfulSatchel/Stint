//
//  TasksWrapperViewController.swift
//  Stint
//
//  Created by James Wu on 1/16/20.
//  Copyright © 2020 James Wu. All rights reserved.
//

import UIKit

class TasksWrapperViewController: UIViewController {

    let tasksHeaderViewController = TasksHeaderViewController()
    
    override func viewDidLoad() {
      super.viewDidLoad()

      // Do any additional setup after loading the view.
      
      self.view.backgroundColor = .green
      self.addTasksHeaderView()
    }
    
    func addTasksHeaderView() {
        self.addChild(self.tasksHeaderViewController)
        self.view.addSubview(self.tasksHeaderViewController.view)
        self.tasksHeaderViewController.didMove(toParent: self)
        applyTasksHeaderViewConstraints()
        
    }
    
    func applyTasksHeaderViewConstraints() {
      self.tasksHeaderViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
      self.tasksHeaderViewController.view.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        
      self.tasksHeaderViewController.view.widthAnchor.constraint(equalToConstant: 414).isActive = true
        
        
      self.tasksHeaderViewController.view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
//        self.tasksHeaderViewController.view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        
    }
    
    func addTasksCollectionView() {
        
    }
  

}
