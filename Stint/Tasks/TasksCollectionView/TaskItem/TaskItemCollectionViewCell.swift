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
  var timeUrgencyContainerView: UIView?
  
  override init(frame: CGRect) {
    super.init(frame: frame)

    contentView.backgroundColor = .purple
    setupCheckboxNameContainer()
    setupTimeUrgencyContainer()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func addTaskToView() {
    let nameTextView: UITextView = {
      let nameTextView = UITextView()
      nameTextView.text = task?.name
      nameTextView.font = UIFont(name: "HelveticaNeue", size: 18)
      
      nameTextView.backgroundColor = .orange
      return nameTextView
    }()
    
    nameTextView.translatesAutoresizingMaskIntoConstraints = false
    checkboxNameContainerView?.addSubview(nameTextView)
    nameTextView.widthAnchor.constraint(equalTo: (checkboxNameContainerView?.widthAnchor)!).isActive = true
    nameTextView.heightAnchor.constraint(equalTo: (checkboxNameContainerView?.heightAnchor)!).isActive = true
  }
  
  private func setupTimeUrgencyContainer() {
    timeUrgencyContainerView = UIView()
    timeUrgencyContainerView?.backgroundColor = .green
    addSubview(timeUrgencyContainerView!)
    applyTimeUrgencyContainerConstraints()
  }
  
  private func setupCheckboxNameContainer() {
    checkboxNameContainerView = UIView()
    checkboxNameContainerView?.backgroundColor = .yellow
    addSubview(checkboxNameContainerView!)
    applyCheckboxNameContainerConstraints()
  }
  
  private func applyTimeUrgencyContainerConstraints() {
    timeUrgencyContainerView?.translatesAutoresizingMaskIntoConstraints = false
    
    let topConstraint = NSLayoutConstraint(
      item: timeUrgencyContainerView!,
      attribute: .top,
      relatedBy: .equal,
      toItem: checkboxNameContainerView!,
      attribute: .bottom,
      multiplier: 1.0,
      constant: 0.0)
    
    let bottomConstraint = NSLayoutConstraint(
      item: timeUrgencyContainerView!,
      attribute: .bottom,
      relatedBy: .equal,
      toItem: contentView,
      attribute: .bottom,
      multiplier: 1.0,
      constant: 0.0)
    
    let leftConstraint = NSLayoutConstraint(
      item: timeUrgencyContainerView!,
      attribute: .left,
      relatedBy: .equal,
      toItem: contentView,
      attribute: .left,
      multiplier: 1.0,
      constant: 0.0)
    
    let rightConstraint = NSLayoutConstraint(
      item: timeUrgencyContainerView!,
      attribute: .right,
      relatedBy: .equal,
      toItem: contentView,
      attribute: .right,
      multiplier: 1.0,
      constant: 0.0)
    
    let widthConstraint = NSLayoutConstraint(
      item: timeUrgencyContainerView!,
      attribute: .width,
      relatedBy: .equal,
      toItem: contentView,
      attribute: .width,
      multiplier: 1.0,
      constant: 0.0)
    
    NSLayoutConstraint.activate([
      topConstraint,
      bottomConstraint,
      leftConstraint,
      rightConstraint,
      widthConstraint,])
  }
  
  private func applyCheckboxNameContainerConstraints() {
    checkboxNameContainerView?.translatesAutoresizingMaskIntoConstraints = false

    let heightConstraint = NSLayoutConstraint(
      item: checkboxNameContainerView!,
      attribute: .height,
      relatedBy: .equal,
      toItem: contentView,
      attribute: .height,
      multiplier: 0.85,
      constant: 0.0)

    let widthConstraint = NSLayoutConstraint(
      item: checkboxNameContainerView!,
      attribute: .width,
      relatedBy: .equal,
      toItem: contentView,
      attribute: .width,
      multiplier: 1.0,
      constant: 0.0)
    
    let topConstraint = NSLayoutConstraint(
      item: checkboxNameContainerView!,
      attribute: .top,
      relatedBy: .equal,
      toItem: contentView,
      attribute: .top,
      multiplier: 1.0,
      constant: 0.0)
  
    let leftConstraint = NSLayoutConstraint(
      item: checkboxNameContainerView!,
      attribute: .left,
      relatedBy: .equal,
      toItem: contentView,
      attribute: .left,
      multiplier: 1.0,
      constant: 0.0)
    
    let rightConstraint = NSLayoutConstraint(
      item: checkboxNameContainerView!,
      attribute: .right,
      relatedBy: .equal,
      toItem: contentView,
      attribute: .right,
      multiplier: 1.0,
      constant: 0.0)
    
    NSLayoutConstraint.activate([
      heightConstraint,
      widthConstraint,
      topConstraint,
      leftConstraint,
      rightConstraint,])
  }
  
}
