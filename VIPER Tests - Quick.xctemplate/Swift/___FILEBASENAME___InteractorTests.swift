//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Nimble
import Quick

@testable import ___PROJECTNAME___

class ___FILEBASENAMEASIDENTIFIER___InteractorSpec: QuickSpec {
        // swiftlint:disable:next function_body_length
        override func spec() {
                var interactor: ___FILEBASENAMEASIDENTIFIER___Interactor!

                var presenterMock: ___FILEBASENAMEASIDENTIFIER___InteractorToPresenterInterfaceMock!

                describe("a ___FILEBASENAMEASIDENTIFIER___ interactor's") {
                        beforeEach {
                                interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
                                presenterMock = ___FILEBASENAMEASIDENTIFIER___InteractorToPresenterInterfaceMock()

                                interactor.presenter = presenterMock
                        }

                        // MARK: - Operational

                        // MARK: - Presenter to Interactor Interface
                }
        }
}
