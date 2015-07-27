//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit
import XCTest

import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___ViewTests: XCTestCase, ___FILEBASENAMEASIDENTIFIER___PresenterInterface {
        var view = ___FILEBASENAMEASIDENTIFIER___View()
	var window = UIWindow()
        
        // MARK: - Test Objects
        var expectation: XCTestExpecation?
        var object: AnyObject?
        
        override func setUp() {
                super.setUp()

                view = ___FILEBASENAMEASIDENTIFIER___View()
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
                object = nil
        }
        
        // MARK: - Operational

        // MARK: - View Interface

        // MARK: - Presenter Interface
        
}
