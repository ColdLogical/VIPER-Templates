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
		window.rootViewController = view
		window.makeKeyAndVisible()
                
                view.presenter = self
        }
        
        override func tearDown() {
                super.tearDown()
		window = UIWindow()
                expectation = nil
        }
        
        // MARK: - Operational

        // MARK: - View Interface

        // MARK: - Presenter Interface
        
}
