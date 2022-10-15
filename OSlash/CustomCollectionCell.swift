//
//  CustomCollectionCell.swift
//  OSlash
//
//  Created by Noor Ahmed on 15/10/22.
//

import UIKit
import SDWebImage

class CustomCollectionCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var viewContainer: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    func configCell(url: String) {
        if let imgUrl = URL(string: url) {
            imageView.sd_setImage(with: imgUrl)
        }
    }
}
