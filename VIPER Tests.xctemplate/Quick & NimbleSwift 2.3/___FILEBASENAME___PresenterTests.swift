import Nimble
import Quick

@testable import ___PROJECTNAME___

 // swiftlint:disable:next type_body_length
class ___VARIABLE_productName___PresenterSpec: QuickSpec {
        // swiftlint:disable:next function_body_length
        override func spec() {
                var presenter: ___VARIABLE_productName___Presenter!

                var delegateMock: ___VARIABLE_productName___DelegateMock!
                var interactorMock: ___VARIABLE_productName___PresenterToInteractorInterfaceMock!
                var viewMock: ___VARIABLE_productName___PresenterToViewInterfaceMock!
                var wireframeMock: ___VARIABLE_productName___WireframeInterfacesMock!

                describe("a ___VARIABLE_productName___ presenter") {
                        beforeEach {
                                presenter = ___VARIABLE_productName___Presenter()
                                delegateMock = ___VARIABLE_productName___DelegateMock()
                                interactorMock = ___VARIABLE_productName___PresenterToInteractorInterfaceMock()
                                viewMock = ___VARIABLE_productName___PresenterToViewInterfaceMock()
                                wireframeMock = ___VARIABLE_productName___WireframeInterfacesMock()

                                presenter.delegate = delegateMock
                                presenter.interactor = interactorMock
                                presenter.view = viewMock
                                presenter.wireframe = wireframeMock
                        }

                        // MARK: - Operational
                        describe("module wireframe computed variable") {
                                it("returns the wireframe as a ___VARIABLE_productName___ object") {
                                        // Arrange

                                        // Act
                                        let moduleWireframe = presenter.moduleWireframe

                                        // Assert
                                        expect(moduleWireframe).to(beIdenticalTo(wireframeMock))
                                }
                        }

                        // MARK: - Interactor to Presenter Interface

                        // MARK: - View to Presenter Interface

                        // MARK: - Wireframe to Presenter Interface
                        describe("set delegate function") {
                                it("sets the input as the new delegate") {
                                        // Arrange
                                        presenter.delegate = nil
                                        let testDelegate = ___VARIABLE_productName___DelegateMock()

                                        // Act
                                        presenter.set(delegate: testDelegate)

                                        // Assert
                                        expect(presenter.delegate).to(beIdenticalTo(testDelegate))
                                }
                        }
                }
        }
}
// swiftlint:disable:this file_length
