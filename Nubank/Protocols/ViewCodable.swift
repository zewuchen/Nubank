//
//  ViewCodable.swift
//  Nubank
//
//  Created by Zewu Chen on 27/12/20.
//

import Foundation

protocol ViewCodable {
    func setupViews()
    func setupViewHierarchy()
    func setupConstraints()
    func setupAditionalConfiguration()
}

extension ViewCodable {
    func setupViews() {
        setupViewHierarchy()
        setupConstraints()
        setupAditionalConfiguration()
    }
    
    func setupAditionalConfiguration() { }
}
