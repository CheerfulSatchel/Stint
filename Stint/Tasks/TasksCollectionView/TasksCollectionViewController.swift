//
//  CollectionViewController.swift
//  Stint
//
//  Created by James Wu on 1/12/20.
//  Copyright © 2020 James Wu. All rights reserved.
//

import UIKit

private let cellReuseIdentifier = "Cell"

class TasksListViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

  override func viewDidLoad() {
    super.viewDidLoad()

    // Uncomment the following line to preserve selection between presentations
    // clearsSelectionOnViewWillAppear = false

    // Register cell classes
    collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellReuseIdentifier)

    // Do any additional setup after loading the view.
    collectionView.backgroundColor = .white
    view.backgroundColor = .magenta

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
    let itemWidth = view.frame.width * 0.95
    let itemHeight = view.frame.height * 0.25
    return .init(width: itemWidth, height: itemHeight)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 1.0, left: 1.0, bottom: 1.0, right: 1.0)
  }
    
    
}
