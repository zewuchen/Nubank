//
//  OptionFooterBarCollectionViewCell.swift
//  Nubank
//
//  Created by Zewu Chen on 27/12/20.
//

import UIKit

class OptionFooterBarCollectionViewCell: UICollectionViewCell {
    
    var optionViewModel: OptionFooterBarViewModel! {
        didSet {
            self.icon.image = optionViewModel.icon
            self.titleLabel.text = optionViewModel.title
        }
    }
    
    // MARK: Views
    let icon: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        image.backgroundColor = .red
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor.Nubank.white
        label.numberOfLines = 2
        label.font = UIFont.OpenSans.optionFooterBar
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: Life Cycle
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupViews()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Autolayout
extension OptionFooterBarCollectionViewCell: ViewCodable {
    func setupViewHierarchy() {
        addSubview(icon)
        addSubview(titleLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            icon.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            icon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            icon.heightAnchor.constraint(equalToConstant: 32),
            icon.widthAnchor.constraint(equalToConstant: 32),
            
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8)
        ])
    }
    
    func setupAditionalConfiguration() {
        backgroundColor = UIColor.Nubank.purpleLight
        layer.cornerRadius = DesignSystem.BorderSize.byDefault.rawValue
    }
}
