//
//  ViewController.swift
//  CompositionalLayout2
//
//  Created by Zachary Farmer on 11/10/22.
//

import UIKit

class ViewController: UIViewController {
    private var dataSource: UICollectionViewDiffableDataSource<Section, Item>!

    @IBOutlet weak var collectionView: UICollectionView!
    
    lazy var collectionViewLayout: UICollectionViewLayout = {
        let layout = UICollectionViewCompositionalLayout { [weak self] (sectionIndex, enviroment) -> NSCollectionLayoutSection? in
            guard let self = self else { return nil }
            
            let snapshot = self.dataSource.snapshot()
            let sectionType = snapshot.sectionIdentifiers[sectionIndex].type
            
            switch sectionType {
            case .mainHeader:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(56))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(56))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .none
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .searchBar:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(60))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(60))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .none
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .headerCell:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .none
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .largeCell:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(380))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93), heightDimension: .absolute(380))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .largeCell3:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(380))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93), heightDimension: .absolute(380))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .largeCell4:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(380))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93), heightDimension: .absolute(380))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .headerCell2:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .none
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .headerCell3:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .none
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .smallCell:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.25), heightDimension: .absolute(88))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(88))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .headerCell4:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .none
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .headerCell5:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .none
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .headerCell6:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .none
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .largeCell2:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(410))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93), heightDimension: .absolute(410))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            default: return nil
            }
        }

        return layout
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()
    }

    
    private func initialize() {
        setUpCollectionView()
        configureDataSource()
    }
    
    private func setUpCollectionView() {
        collectionView.register(UINib(nibName: "MainHeaderCell", bundle: .main), forCellWithReuseIdentifier: "MainHeaderCell")
        collectionView.register(UINib(nibName: "SearchBarCell", bundle: .main), forCellWithReuseIdentifier: "SearchBarCell")
        collectionView.register(UINib(nibName: "HeaderCell", bundle: .main), forCellWithReuseIdentifier: "HeaderCell")
        collectionView.register(UINib(nibName: "LargeCell", bundle: .main), forCellWithReuseIdentifier: "LargeCell")
        collectionView.register(UINib(nibName: "HeaderCell2", bundle: .main), forCellWithReuseIdentifier: "HeaderCell2")
        collectionView.register(UINib(nibName: "HeaderCell3", bundle: .main), forCellWithReuseIdentifier: "HeaderCell3")
        collectionView.register(UINib(nibName: "HeaderCell4", bundle: .main), forCellWithReuseIdentifier: "HeaderCell4")
        collectionView.register(UINib(nibName: "HeaderCell5", bundle: .main), forCellWithReuseIdentifier: "HeaderCell5")
        collectionView.register(UINib(nibName: "HeaderCell6", bundle: .main), forCellWithReuseIdentifier: "HeaderCell6")
        collectionView.register(UINib(nibName: "SmallCell", bundle: .main), forCellWithReuseIdentifier: "SmallCell")
        collectionView.register(UINib(nibName: "LargeCell2", bundle: .main), forCellWithReuseIdentifier: "LargeCell2")
        collectionView.register(UINib(nibName: "LargeCell3", bundle: .main), forCellWithReuseIdentifier: "LargeCell3")
        collectionView.register(UINib(nibName: "LargeCell4", bundle: .main), forCellWithReuseIdentifier: "LargeCell4")
        
        collectionView.collectionViewLayout = collectionViewLayout
    }
    
    private func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView) { [weak self]
            (collectionView, indexPath, item) in
            guard let self = self else { return nil }
            
            let snapshot = self.dataSource.snapshot()
            let sectionType = snapshot.sectionIdentifiers[indexPath.section].type
            
            switch sectionType {
            case .mainHeader:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainHeaderCell", for: indexPath)
                return cell
                
            case .searchBar:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchBarCell", for: indexPath)
                return cell
                
            case .headerCell:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderCell", for: indexPath)
                return cell
                
            case .largeCell:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LargeCell", for: indexPath)
                return cell
                
            case .largeCell3:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LargeCell3", for: indexPath)
                return cell
                
            case .headerCell2:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderCell2", for: indexPath)
                return cell
                
            case .headerCell3:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderCell3", for: indexPath)
                return cell
                
            case .headerCell4:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderCell4", for: indexPath)
                return cell
                
            case .headerCell5:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderCell5", for: indexPath)
                return cell
                
            case .headerCell6:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderCell6", for: indexPath)
                return cell
                
            case .smallCell:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SmallCell", for: indexPath)
                return cell
                
            case .largeCell2:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LargeCell2", for: indexPath)
                return cell
                
            case .largeCell4:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LargeCell4", for: indexPath)
                return cell
                
                
            default: return nil
            }
        }
            let sections = [
                Section(type: .mainHeader, items: [
                    Item()
                ]),
                Section(type: .searchBar, items: [
                    Item()
                ]),
                Section(type: .headerCell, items: [
                    Item()
                ]),
                Section(type: .largeCell, items: [
                    Item(), Item(), Item()
                ]),
                Section(type: .headerCell2, items: [
                    Item()
                ]),
                Section(type: .largeCell, items: [
                    Item(), Item(), Item()
                ]),
                Section(type: .headerCell3, items: [
                    Item()
                ]),
                Section(type: .smallCell, items: [
                    Item(), Item(), Item(), Item(), Item()
                ]),
                Section(type: .headerCell4, items: [
                    Item()
                ]),
                Section(type: .largeCell, items: [
                    Item(), Item(), Item()
                ]),
                Section(type: .largeCell2, items: [
                    Item(), Item(), Item()
                ]),
                Section(type: .headerCell5, items: [
                    Item()
                ]),
                Section(type: .largeCell3, items: [
                    Item(), Item(), Item()
                ]),
                Section(type: .headerCell6, items: [
                    Item()
                ]),
                Section(type: .largeCell4, items: [
                    Item(), Item(), Item()
                ])
            ]
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections(sections)
        sections.forEach { snapshot.appendItems($0.items, toSection: $0) }
        dataSource.apply(snapshot, animatingDifferences: false)
        
    }
}

