import UIKit
import XCTest

@testable import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___ViewTests: XCTestCase {
        var view: ___FILEBASENAMEASIDENTIFIER___View!

        // MARK: - Test Objects
        var presenterMock: ___FILEBASENAMEASIDENTIFIER___ViewToPresenterInterfaceMock!

        override func setUp() {
                super.setUp()

                view = ___FILEBASENAMEASIDENTIFIER___View()
                presenterMock = ___FILEBASENAMEASIDENTIFIER___ViewToPresenterInterfaceMock()

                _ = view.view

                view.presenter = presenterMock
        }

        // MARK: - Operational

        // MARK: - Presenter to View Interface

}
