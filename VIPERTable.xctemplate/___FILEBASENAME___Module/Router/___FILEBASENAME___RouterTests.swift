//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import XCTest

<#todo#> //change target of this file to UnitTest
<#todo#> //make sure you're importing correct testable target
@testable import ___PROJECTNAME___

class ___VARIABLE_viperModuleName___RouterTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testIfStoryboardExists() {
        let path = getPathToStoryboard()
        XCTAssertNotNil(path, "Failed - could not find path for resource \(___VARIABLE_viperModuleName___Router.storyboardName).storyboard")
    }

    func testIfViewControllerWithProperIDExists() {
        XCTAssert(viewControllerWithStoryboardIDExists(), "Failed - could not find ViewController with identifier \(___VARIABLE_viperModuleName___Router.storyboardID) in \(___VARIABLE_viperModuleName___Router.storyboardName).storyboard")
    }

    func testIfViewControllerIsOfProperType() {
        var assertion = false
        defer {
            XCTAssert(assertion, "ViewController with identifier \(___VARIABLE_viperModuleName___Router.storyboardID) in \(___VARIABLE_viperModuleName___Router.storyboardName).storyboard is not of type \(___VARIABLE_viperModuleName___Router.viewControllerType)")
        }

        guard viewControllerWithStoryboardIDExists() else { return }
        let storyboard = getStoryboard()
        assertion = storyboard.instantiateViewController(withIdentifier: ___VARIABLE_viperModuleName___Router.storyboardID) is ___VARIABLE_viperModuleName___ViewController
    }

    func getPathToStoryboard() -> String? {
        return Bundle.main.path(forResource: ___VARIABLE_viperModuleName___Router.storyboardName, ofType: "storyboardc")
    }

    func getStoryboard() -> UIStoryboard {
        return UIStoryboard(name: ___VARIABLE_viperModuleName___Router.storyboardName, bundle: Bundle.main)
    }

    func viewControllerWithStoryboardIDExists(storyboardID: String = ___VARIABLE_viperModuleName___Router.storyboardID) -> Bool {
        guard getPathToStoryboard() != nil else { return false }
        let storyboard = getStoryboard()

        guard let storyboardValues = storyboard.value(forKey: "identifierToNibNameMap") as? [String: Any], (storyboardValues[storyboardID] != nil) else { return false }

        return true
    }

    func testViewInitialization() {
        let viewController = ___VARIABLE_viperModuleName___Router.instantiateModule()
        XCTAssertNotNil(viewController, "Failed with not initialized ___VARIABLE_viperModuleName___ViewController")
    }
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
