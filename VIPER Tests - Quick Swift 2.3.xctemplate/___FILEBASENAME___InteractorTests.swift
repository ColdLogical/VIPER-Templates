import Nimble
import Quick

@testable import ___PROJECTNAME___

 // swiftlint:disable:next type_body_length
class ___FILEBASENAMEASIDENTIFIER___InteractorSpec: QuickSpec {
        // swiftlint:disable:next function_body_length
        override func spec() {
                var interactor: ___FILEBASENAMEASIDENTIFIER___Interactor!

                var presenterMock: ___FILEBASENAMEASIDENTIFIER___InteractorToPresenterInterfaceMock!

                describe("a ___FILEBASENAMEASIDENTIFIER___ interactor") {
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
// swiftlint:disable:this file_length
