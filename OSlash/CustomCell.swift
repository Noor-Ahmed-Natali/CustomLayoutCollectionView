//
//  CellView.swift
//  OSlash
//
//  Created by Noor Ahmed on 15/10/22.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
      super.awakeFromNib()
      containerView.layer.cornerRadius = 6
      containerView.layer.masksToBounds = true
    }
}
