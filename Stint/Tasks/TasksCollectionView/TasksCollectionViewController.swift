//
//  CollectionViewController.swift
//  Stint
//
//  Created by James Wu on 1/12/20.
//  Copyright © 2020 James Wu. All rights reserved.
//

import UIKit

private let cellReuseIdentifier = "Cell"
private let headerReuseIdentifier = "HeaderCell"

class TasksCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

  override func viewDidLoad() {
    super.viewDidLoad()

    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false

    // Register cell classes
    self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellReuseIdentifier)

    self.collectionView!.register(TasksCollectionViewHeader.self,
                                  forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                  withReuseIdentifier: headerReuseIdentifier)
    self.collectionView!.contentInsetAdjustmentBehavior = .never
    // Do any additional setup after loading the view.
    self.collectionView.backgroundColor = .white
    
    let layout = self.collectionView.collectionViewLayout as? UICollectionViewFlowLayout
    layout?.sectionHeadersPinToVisibleBounds = true
  }

  // MARK: UICollectionViewDataSource

  override func numberOfSections(in collectionView: UICollectionView) -> Int {
      // #warning Incomplete implementation, return the number of sections
      return 1
  }


  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      // #warning Incomplete implementation, return the number of items
      return 20
  }

  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier:
        cellReuseIdentifier, for: indexPath)

    // Configure the cell
    cell.backgroundColor = .black
    return cell
  }

  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return .init(width: self.view.frame.width, height: self.view.frame.width/4)
  }
  
  override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    let header = self.collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerReuseIdentifier, for: indexPath)
    return header
  }

  func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        referenceSizeForHeaderInSection section: Int) -> CGSize {
    return .init(width: self.view.frame.width, height: self.view.frame.height/3)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 10.0, left: 1.0, bottom: 10.0, right: 1.0)
  }
    
    
}
