//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit
import XCTest

@testable import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___ViewTests: XCTestCase, ___FILEBASENAMEASIDENTIFIER___PresenterInterface {
        var view = ___FILEBASENAMEASIDENTIFIER___View()
	var window = UIWindow()
        
        // MARK: - Test Objects
        var expectation: XCTestExpectation?
        
        override func setUp() {
                super.setUp()

                let sb = UIStoryboard(name: k___FILEBASENAMEASIDENTIFIER___StoryboardIdentifier, bundle: NSBundle(forClass: ___FILEBASENAMEASIDENTIFIER___View.self))
                view = sb.instantiateViewControllerWithIdentifier(k___FILEBASENAMEASIDENTIFIER___ViewIdentifier) as! ___FILEBASENAMEASIDENTIFIER___View
		view.loadView()
                view.presenter = self

		window.rootViewController = view
		window.makeKeyAndVisible()
        }
        
        override func tearDown() {
                super.tearDown()
		view = ___FILEBASENAMEASIDENTIFIER___View()
		window = UIWindow()
                expectation = nil
        }
        
        // MARK: - Operational

        // MARK: - View Interface

        // MARK: - Presenter Interface
        
}
