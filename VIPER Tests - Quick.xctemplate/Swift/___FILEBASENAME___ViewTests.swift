import Nimble
import Quick

@testable import ___PROJECTNAME___

 // swiftlint:disable:next type_body_length
class ___FILEBASENAMEASIDENTIFIER___ViewSpec: QuickSpec {
        // swiftlint:disable:next function_body_length
        override func spec() {
                var view: ___FILEBASENAMEASIDENTIFIER___View!

                var presenterMock: ___FILEBASENAMEASIDENTIFIER___ViewToPresenterInterfaceMock!

                describe("a ___FILEBASENAMEASIDENTIFIER___ view") {
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
// swiftlint:disable:this file_length
