//
//  Section.swift
//  CompositionalLayout2
//
//  Created by Zachary Farmer on 11/10/22.
//

import Foundation

struct Section: Hashable {
    let id = UUID()
    
    let type: SectionType
    let title: String
    let subtitle: String
    let items: [Item]
    
    init(type: SectionType, title: String = "", subtitle: String = "", items: [Item] = []) {
        
        self.type = type
        self.title = title
        self.subtitle = subtitle
        self.items = items
    }
    
    enum ItemSectionType: String {
        case largeCell
        case largeCell2
        case largeCell3
        case largeCell4
        case searchBar
        case mainHeader
        case headerCell
        case headerCell2
        case headerCell3
        case headerCell4
        case headerCell5
        case headerCell6
        case smallCell
        
    }
    
    
    
    struct SectionType: RawRepresentable, Hashable {
        typealias RawValue = String
        var rawValue: String
        
        init(rawValue: String) {
            self.rawValue = rawValue
        }
        
        static let largeCell = SectionType(rawValue: Section.ItemSectionType.largeCell.rawValue)
        static let largeCell2 = SectionType(rawValue: Section.ItemSectionType.largeCell2.rawValue)
        static let largeCell3 = SectionType(rawValue: Section.ItemSectionType.largeCell3.rawValue)
        static let largeCell4 = SectionType(rawValue: Section.ItemSectionType.largeCell4.rawValue)
        static let searchBar = SectionType(rawValue: Section.ItemSectionType.searchBar.rawValue)
        static let mainHeader = SectionType(rawValue: Section.ItemSectionType.mainHeader.rawValue)
        static let headerCell = SectionType(rawValue: Section.ItemSectionType.headerCell.rawValue)
        static let headerCell2 = SectionType(rawValue: Section.ItemSectionType.headerCell2.rawValue)
        static let headerCell3 = SectionType(rawValue: Section.ItemSectionType.headerCell3.rawValue)
        static let headerCell4 = SectionType(rawValue: Section.ItemSectionType.headerCell4.rawValue)
        static let headerCell5 = SectionType(rawValue: Section.ItemSectionType.headerCell5.rawValue)
        static let headerCell6 = SectionType(rawValue: Section.ItemSectionType.headerCell6.rawValue)
        static let smallCell = SectionType(rawValue: Section.ItemSectionType.smallCell.rawValue)

    }
    
}
