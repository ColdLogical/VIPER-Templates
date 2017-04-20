import Foundation
import XCTest

@testable import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___InteractorTests: XCTestCase {
        var interactor: ___FILEBASENAMEASIDENTIFIER___Interactor!

        // MARK: - Test Objects
        var presenterMock: ___FILEBASENAMEASIDENTIFIER___InteractorToPresenterInterfaceMock!

        override func setUp() {
                super.setUp()

                interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
                presenterMock = ___FILEBASENAMEASIDENTIFIER___InteractorToPresenterInterfaceMock()

                interactor.presenter = presenterMock
        }

        // MARK: - Operational

        // MARK: - Presenter to Interactor Interface

}
