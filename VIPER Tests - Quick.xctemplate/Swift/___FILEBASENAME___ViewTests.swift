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

class ___FILEBASENAMEASIDENTIFIER___ViewSpec: QuickSpec {
        // swiftlint:disable:next function_body_length
        override func spec() {
                var view: ___FILEBASENAMEASIDENTIFIER___View!

                var presenterMock: ___FILEBASENAMEASIDENTIFIER___ViewToPresenterInterfaceMock!

                describe("a ___FILEBASENAMEASIDENTIFIER___ view's") {
                        beforeEach {
                                view = ___FILEBASENAMEASIDENTIFIER___View()
                                presenterMock = ___FILEBASENAMEASIDENTIFIER___ViewToPresenterInterfaceMock()

                                _ = view.view

                                view.presenter = presenterMock
                        }

                        // MARK: - Operational

                        // MARK: - Presenter to View Interface
                }
        }
}
