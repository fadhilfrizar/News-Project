//
//  NewsTests.swift
//  News ProjectTests
//
//  Created by USER-MAC-GLIT-007 on 11/02/23.
//

import Foundation
import XCTest
@testable import News_Project

class NewsTests: XCTestCase {
    
    func test_viewDidLoad_withNoCategories() {
        let sut = NewsController(categories: [])
        
        _ = sut.view
        
        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 0)
    }
    
    func test_viewDidLoad_withCategories() {
        let sut = NewsController(categories: ["SPORT", "GENERAL"])
        
        _ = sut.view
        
        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 1)
    }
}

