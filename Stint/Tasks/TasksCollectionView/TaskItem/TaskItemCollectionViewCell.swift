//
//  TaskItemCollectionViewCell.swift
//  Stint
//
//  Created by James Wu on 1/19/20.
//  Copyright © 2020 James Wu. All rights reserved.
//

import UIKit

class TaskItemCollectionViewCell: UICollectionViewCell {
  
  var task: Task?
  
  var checkboxNameContainerView: UIView?
  
  override init(frame: CGRect) {
    super.init(frame: frame)

    contentView.backgroundColor = .purple
    setupCheckboxNameContainer()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setupCheckboxNameContainer() {
    checkboxNameContainerView = UIView()
    checkboxNameContainerView?.backgroundColor = .yellow
    addSubview(checkboxNameContainerView!)
    applyCheckboxNameContainerConstraints()

  }
  
  private func applyCheckboxNameContainerConstraints() {
    checkboxNameContainerView?.translatesAutoresizingMaskIntoConstraints = false
    checkboxNameContainerView?.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
    checkboxNameContainerView?.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
  checkboxNameContainerView?.rightAnchor.constraint(equalTo:contentView.rightAnchor).isActive = true
    
    checkboxNameContainerView?.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.67).isActive = true
  }
  
}
