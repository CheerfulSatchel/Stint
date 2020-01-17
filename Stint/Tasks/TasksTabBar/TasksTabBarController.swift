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
//    let tasks = TasksCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
    let settings = UIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupTabBarItems()
    }
    
    func setupTabBarItems() {
        let tasksItem = UITabBarItem()
        tasksItem.image = UIImage(named: "TasksIcon")
        tasks.tabBarItem = tasksItem
        
        let anotherItem = UITabBarItem()
        anotherItem.image = UIImage(named: "TasksIcon")
        settings.tabBarItem = anotherItem
        
        self.viewControllers = [tasks, settings]
        self.modalPresentationStyle = .fullScreen
    }

}
