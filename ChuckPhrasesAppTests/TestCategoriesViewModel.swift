//
//  TestCategoriesViewModel.swift
//  ChuckPhrasesAppTests
//
//  Created by Pablo Manzur on 14/08/2022.
//


import XCTest
@testable import ChuckPhrasesApp

class Test_CategoriesViewModel: XCTestCase {
    
    var mockService: MockCategoriesService?
    var sut: CategoriesViewModel?
    
    
    override func setUpWithError() throws {
        mockService = MockCategoriesService()
        sut = CategoriesViewModel(service: mockService!)
    }
    
    override func tearDownWithError() throws {
        mockService = nil
        sut = nil
    }
    
    func test_getCategories_success() {
        let expectation = XCTestExpectation(description: "Retrieving data...")
        
        sut?.service.getCategories(onComplete: { categories in
            XCTAssertTrue(categories.count > 0)
            expectation.fulfill()
        }, onError: {
            print("")
            expectation.fulfill()
        })
        
        wait(for: [expectation], timeout: 3)
    }
}
