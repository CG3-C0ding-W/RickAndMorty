//
//  RMCharacterDetailView.swift
//  RickAndMorty
//
//  Created by Curtis Garrett on 3/29/23.
//

import UIKit

/// View for single character info
final class RMCharacterDetailView: UIView {
   
   private var collecctionView: UICollectionView?
   
   private let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.hidesWhenStopped = true
        spinner.translatesAutoresizingMaskIntoConstraints = false
        return spinner
   }()
   
   ///MARK: - Init
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      translatesAutoResizingMaskIntoConstraints = false
      backgroundColor = .systemPurple
      let collectionView = createCollectionView()
      self.collectionView = collectionView
      addSubviews(collectionView, spinner)
      addConstraints()
   }
   
   required init?(coder: NSCoder) {
      fatalError("Unsupported")
   }
   
   private func addConstraints() {
      guard let collectionView = collectionView else {
         return
      }
       NSLayoutConstraint.activate([
            spinner.widthAnchor.constraint(equalToConstant: 100),
            spinner.heightAnchor.constraint(equalToConstant: 100),
            spinner.centerXAnchor.constraint(equalTo: centerXAnchor),
            spinner.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leftAnchor.constraint(equalTo: leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
   }
   
   private func createCollectionView() -> UICollectionView {
      let layout = UICollectionViewCompositionalLayout { sectionIndex, _in
         return self.createSection(for:sectionIndex)
      }
      let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
      collectionView.register(UICollectionViewCell.self,
                              forCellWithReuseIdentifier: "cell")
      collectionView.translatesAutoresizingMaskIntoConstraints = false
      return collectionView
   }
   
   private func createSection(for: sectionIndex: Int) -> NSCollectionLayoutSection{
      let item = NSCollectionLayoutItem(
         layoutSize: NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0)
            heightDimension: .fractionalHeight(1.0)
         )
      )
      let group = NSCollectionLayoutGroup.vertical(
         layoutSize: NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0)
            heightDimension: .absolute(150)
         ) ,
         subItems: [item]
      )
      let section = NSCollectionLayoutSection(group: group)
      return section
   }
}
