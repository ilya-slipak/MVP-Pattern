//
//  CarContentTableViewCell.swift
//  MVP
//
//  Created by Ilya Slipak on 14.11.2020.
//

import UIKit

final class CarContentTableViewCell: UITableViewCell {

    // MARK: - IBOutlet Properties
    
    @IBOutlet private weak var previewImageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var priceLabel: UILabel!
    @IBOutlet private weak var yearLabel: UILabel!
    
    // MARK: - Lifecycle Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.layer.cornerRadius = 4
    }
    
    // MARK: - Setup Methods
        
    func configure(with model: UICarModel) {
        
        titleLabel.text = model.title
        yearLabel.text = model.year
        priceLabel.attributedText = model.price
        previewImageView.image = model.image
    }
}
