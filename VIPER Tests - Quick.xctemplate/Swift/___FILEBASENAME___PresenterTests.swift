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

class ___FILEBASENAMEASIDENTIFIER___PresenterSpec: QuickSpec {
        // swiftlint:disable:next function_body_length
        override func spec() {
                var presenter: ___FILEBASENAMEASIDENTIFIER___Presenter!

                var delegateMock: ___FILEBASENAMEASIDENTIFIER___DelegateMock!
                var interactorMock: ___FILEBASENAMEASIDENTIFIER___PresenterToInteractorInterfaceMock!
                var viewMock: ___FILEBASENAMEASIDENTIFIER___PresenterToViewInterfaceMock!
                var wireframeMock: ___FILEBASENAMEASIDENTIFIER___WireframeInterfacesMock!

                describe("a sports presenter's") {
                        beforeEach {
                                presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()

                                delegateMock = ___FILEBASENAMEASIDENTIFIER___DelegateMock()
                                interactorMock = ___FILEBASENAMEASIDENTIFIER___PresenterToInteractorInterfaceMock()
                                viewMock = ___FILEBASENAMEASIDENTIFIER___PresenterToViewInterfaceMock()
                                wireframeMock = ___FILEBASENAMEASIDENTIFIER___WireframeInterfacesMock()

                                presenter.delegate = delegateMock
                                presenter.interactor = interactorMock
                                presenter.view = viewMock
                                presenter.wireframe = wireframeMock
                        }

                        // MARK: - Operational
                        describe("module wireframe computed variable") {
                                it("returns the wireframe as a Sports module interface object") {
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
                                        let presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
                                        presenter.delegate = nil
                                        let delegateMock = ___FILEBASENAMEASIDENTIFIER___DelegateMock()

                                        // Act
                                        presenter.set(delegate: delegateMock)

                                        // Assert
                                        expect(presenter.delegate).to(beIdenticalTo(delegateMock))
                                }
                        }
                }
        }
}
