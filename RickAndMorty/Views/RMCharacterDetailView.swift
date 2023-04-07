//
//  RMCharacterDetailView.swift
//  RickAndMorty
//
//  Created by Curtis Garrett on 3/29/23.
//

import UIKit

/// View for single character info
final class RMCharacterDetailView: UIView {
   
   
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      translatesAutoResizingMaskIntoConstraints = false
      backgroundColor = .systemPurple
   }
   
   required init?(coder: NSCoder) {
      fatalError("Unsupported")
   }
   
    
}
