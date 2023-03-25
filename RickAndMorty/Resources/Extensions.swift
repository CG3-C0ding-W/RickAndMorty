//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Curtis Garrett on 3/23/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}
