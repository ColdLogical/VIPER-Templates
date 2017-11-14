import UIKit
import XCTest

@testable import ___PROJECTNAME___

class ___VARIABLE_productName___ViewTests: XCTestCase {
        var view: ___VARIABLE_productName___View!

        // MARK: - Test Objects
        var presenterMock: ___VARIABLE_productName___ViewToPresenterInterfaceMock!

        override func setUp() {
                super.setUp()

                view = ___VARIABLE_productName___View()
                presenterMock = ___VARIABLE_productName___ViewToPresenterInterfaceMock()

                _ = view.view

                view.presenter = presenterMock
        }

        // MARK: - Operational

        // MARK: - Presenter to View Interface

}
