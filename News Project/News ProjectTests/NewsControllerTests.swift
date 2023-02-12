//
//  NewsControllerTests.swift
//  News ProjectTests
//
//  Created by USER-MAC-GLIT-007 on 11/02/23.
//
import Foundation
import XCTest
@testable import News_Project

class NewsControllerTests: XCTestCase {
    
    
    func test_viewDidLoad_renderTitleLabel() {
        let sut = NewsViewController(categories: [], titleCategories: "Categories")
        _ = sut.view
        
        XCTAssertEqual(sut.titleLabel.text, "Categories")
    }
    func test_viewDidLoad_withNoCategories() {
        let sut = NewsViewController(categories: [], titleCategories: "")

        _ = sut.view

        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 0)
    }

    func test_viewDidLoad_withCategories() {
        let sut = NewsViewController(categories: ["Sport"], titleCategories: "")

        _ = sut.view

        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 1)
    }

    func test_viewDidLoad_withCategoriesText() {
        let sut = NewsViewController(categories: ["Sport"], titleCategories: "")

        _ = sut.view

        let indexPath = IndexPath(item: 0, section: 0)
        let cell = sut.tableView.dataSource?.tableView(sut.tableView, cellForRowAt: indexPath)


        XCTAssertEqual(cell?.textLabel?.text, "Sport")
    }
}

