//
//  WebinarUITests.swift
//  WebinarUITests
//
//  Created by Paul Stefan Ort on 4/28/20.
//  Copyright © 2020 Def Method. All rights reserved.
//

import XCTest

class WebinarUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    let app = XCUIApplication()
    
    override func setUp() {
        app.launch()
    }

    func testIntroScreen() throws {
        let introHeader = app.staticTexts["intro.header"]
        XCTAssertTrue(introHeader.exists)
        
        let introTitle = app.staticTexts["intro.title"]
        XCTAssertTrue(introTitle.exists)
        
        let introCompany = app.staticTexts["intro.company"]
        XCTAssertTrue(introCompany.exists)
        
        let introPresenter = app.staticTexts["intro.presenter"]
        XCTAssertTrue(introPresenter.exists)
        
        let introNext = app.buttons["intro.next"]
        XCTAssertTrue(introNext.exists)
        introNext.tap()
        
        let backButton = app.navigationBars.buttons["Back"]
        XCTAssertTrue(backButton.exists)
        backButton.tap()
    }
    
    func testWhatToExpectScreen() throws {
        app.buttons["intro.next"].tap()
        
        let header = app.staticTexts["what-to-expect.header"]
        XCTAssertTrue(header.exists)
        
        let title = app.staticTexts["what-to-expect.title"]
        XCTAssertTrue(title.exists)
        
        let programmaticVisualLayouts = app.staticTexts["what-to-expect.programmatic-visual-layouts"]
        XCTAssertTrue(programmaticVisualLayouts.exists)
        
        let declarativeUIs = app.staticTexts["what-to-expect.declarative-uis"]
        XCTAssertTrue(declarativeUIs.exists)
        
        let welcomeNext = app.buttons["what-to-expect.next"]
        XCTAssertTrue(welcomeNext.exists)
        welcomeNext.tap()
        
        let backButton = app.navigationBars.buttons["Back"]
        XCTAssertTrue(backButton.exists)
        backButton.tap()
    }
    
    func testLayoutsScreen() {
        app.buttons["intro.next"].tap()
        app.buttons["what-to-expect.next"].tap()
        
        let header = app.staticTexts["layouts.header"]
        XCTAssertTrue(header.exists)
        
        let title = app.staticTexts["layouts.title"]
        XCTAssertTrue(title.exists)
        
        let programmatic = app.staticTexts["layouts.programmatic"]
        XCTAssertTrue(programmatic.exists)
        
        let visual = app.staticTexts["layouts.visual"]
        XCTAssertTrue(visual.exists)
        
        let layoutsNext = app.buttons["layouts.next"]
        XCTAssertTrue(layoutsNext.exists)
        layoutsNext.tap()
        
        let backButton = app.navigationBars.buttons["Back"]
        XCTAssertTrue(backButton.exists)
        backButton.tap()
    }
    
    func testDeclarativeUIScreen() {
        app.buttons["intro.next"].tap()
        app.buttons["what-to-expect.next"].tap()
        app.buttons["layouts.next"].tap()
        
        let header = app.staticTexts["declarative-ui.header"]
        XCTAssertTrue(header.exists)
        
        let title = app.staticTexts["declarative-ui.title"]
        XCTAssertTrue(title.exists)
        
        let state = app.staticTexts["declarative-ui.state"]
        XCTAssertTrue(state.exists)
        
        let object = app.staticTexts["declarative-ui.object"]
        XCTAssertTrue(object.exists)
        
        let environment = app.staticTexts["declarative-ui.environment"]
        XCTAssertTrue(environment.exists)
        
        let declarativeNext = app.buttons["declarative-ui.next"]
        XCTAssertTrue(declarativeNext.exists)
        declarativeNext.tap()
        
        let backButton = app.navigationBars.buttons["Back"]
        XCTAssertTrue(backButton.exists)
        backButton.tap()
    }
    
    func testTestingScreen() {
        app.buttons["intro.next"].tap()
        app.buttons["what-to-expect.next"].tap()
        app.buttons["layouts.next"].tap()
        app.buttons["declarative-ui.next"].tap()
        
        let header = app.staticTexts["testing.header"]
        XCTAssertTrue(header.exists)
        
        let title = app.staticTexts["testing.title"]
        XCTAssertTrue(title.exists)
        
        let uiTests = app.staticTexts["testing.ui-tests"]
        XCTAssertTrue(uiTests.exists)
        
        let unitTests = app.staticTexts["testing.unit-tests"]
        XCTAssertTrue(unitTests.exists)
        
        let testingNext = app.buttons["testing.next"]
        XCTAssertTrue(testingNext.exists)
        testingNext.tap()
        
        let backButton = app.navigationBars.buttons["Back"]
        XCTAssertTrue(backButton.exists)
        backButton.tap()
    }
    
    func testReviewScreen() {
        app.buttons["intro.next"].tap()
        app.buttons["what-to-expect.next"].tap()
        app.buttons["layouts.next"].tap()
        app.buttons["declarative-ui.next"].tap()
        app.buttons["testing.next"].tap()
        
        let header = app.staticTexts["review.header"]
        XCTAssertTrue(header.exists)
        
        let title = app.staticTexts["review.title"]
        XCTAssertTrue(title.exists)
        
        let layouts = app.staticTexts["review.layouts"]
        XCTAssertTrue(layouts.exists)
        
        let declarativeUIs = app.staticTexts["review.declarative-uis"]
        XCTAssertTrue(declarativeUIs.exists)
        
        let testing = app.staticTexts["review.testing"]
        XCTAssertTrue(testing.exists)
        
        let reviewNext = app.buttons["review.next"]
        XCTAssertTrue(reviewNext.exists)
        reviewNext.tap()
        
        app.navigationBars.buttons["Back"].tap()
    }
    
    func testResourcesScreen() {
        app.buttons["intro.next"].tap()
        app.buttons["what-to-expect.next"].tap()
        app.buttons["layouts.next"].tap()
        app.buttons["declarative-ui.next"].tap()
        app.buttons["testing.next"].tap()
        app.buttons["review.next"].tap()
        
        let header = app.staticTexts["resources.header"]
        XCTAssertTrue(header.exists)
        
        let title = app.staticTexts["resources.title"]
        XCTAssertTrue(title.exists)
        
        let tablesQuery = app.tables
        
        XCTAssertTrue(tablesQuery.buttons["resources.resource-03"].exists)
        
        let resourcesAppleOnlySwitch = tablesQuery/*@START_MENU_TOKEN@*/.switches["resources.apple-only"]/*[[".cells",".switches[\"Apple Resources Only\"]",".switches[\"resources.apple-only\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        resourcesAppleOnlySwitch.tap()
        XCTAssertFalse(tablesQuery.buttons["resources.resource-03"].exists)
        
        resourcesAppleOnlySwitch.tap()
        XCTAssertTrue(tablesQuery.buttons["resources.resource-03"].exists)

        app.navigationBars.buttons["Back"].tap()
    }
    
    func testResourceDetailScreen() {
        app.buttons["intro.next"].tap()
        app.buttons["what-to-expect.next"].tap()
        app.buttons["layouts.next"].tap()
        app.buttons["declarative-ui.next"].tap()
        app.buttons["testing.next"].tap()
        app.buttons["review.next"].tap()
        app.tables.buttons["resources.resource-01"].tap()
        
        let header = app.staticTexts["resource-detail.header"]
        XCTAssertTrue(header.exists)
        
        let title = app.staticTexts["resource-detail.title"]
        XCTAssertTrue(title.exists)
        
        let url = app.staticTexts["resource-detail.url"]
        XCTAssertTrue(url.exists)
        
        let source = app.staticTexts["resource-detail.source"]
        XCTAssertTrue(source.exists)
        
        let resourceDetailNotesTextField = app.textFields["resource-detail.notes"]
        
        let placeholderText = resourceDetailNotesTextField.value(forKey: "placeholderValue") as! String
        XCTAssertEqual(placeholderText, "Notes")
        
        let originalText = resourceDetailNotesTextField.value(forKey: "value") as! String
        XCTAssertEqual(originalText, "Notes")
        
        resourceDetailNotesTextField.tap()
        
        resourceDetailNotesTextField.typeText("Some Notes")
        
        let returnButton = app.buttons["Return"]
        returnButton.tap()
        
        let backButton = app.navigationBars.buttons["Back"]
        backButton.tap()
        app.tables.buttons["resources.resource-01"].tap()
        
        let enteredText = resourceDetailNotesTextField.value(forKey: "value") as! String
        let expectedText = "Some Notes"
        XCTAssertEqual(enteredText, expectedText)
    }

//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
