//
//  ViewController.swift
//  OSlash
//
//  Created by Noor Ahmed on 15/10/22.
//

import UIKit

class ViewController: UIViewController {

    private let cellName: String = "CustomCollectionCell"
    @IBOutlet weak var imageContainer: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageContainer.delegate = self
        imageContainer.dataSource = self
        imageContainer.register(UINib(nibName: cellName, bundle: nil), forCellWithReuseIdentifier: cellName)
        
        if let layout = imageContainer.collectionViewLayout as? CollectionLayout {
            layout.delegate = self
        }
        
//        if let layout = imageContainer?.collectionViewLayout as? PinterestLayout {
//          layout.delegate = self
//        }
    }
}

//MARK: Delegates
extension ViewController: UICollectionViewDelegate {
    
}

//MARK: DataSource
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellName, for: indexPath) as! CustomCollectionCell
        
        cell.configCell(url: "https://source.unsplash.com/random")
        
        return cell
    }
        
}

//MARK: Custom Delegate
extension ViewController: CollectionLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
//        return photos[indexPath.item].image.size.height
        return 150
    }
    
    
}
