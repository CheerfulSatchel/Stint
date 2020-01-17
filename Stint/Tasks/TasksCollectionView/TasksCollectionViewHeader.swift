//
//  TasksListHeader.swift
//  Stint
//
//  Created by James Wu on 1/12/20.
//  Copyright © 2020 James Wu. All rights reserved.
//

import UIKit

class TasksCollectionViewHeader: UICollectionReusableView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
