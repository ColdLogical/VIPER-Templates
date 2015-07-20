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
        var expectation: XCTestExpecation?
        var view = ___FILEBASENAMEASIDENTIFIER___View()
        var object: AnyObject?
        
        override func setUp() {
                super.setUp()
                view = ___FILEBASENAMEASIDENTIFIER___View()
                view.presenter = self;
        }
        
        override func tearDown() {
                super.tearDown()
                expectation = nil;
                object = nil;
        }
        
        // MARK: - Presenter Interface
        
}