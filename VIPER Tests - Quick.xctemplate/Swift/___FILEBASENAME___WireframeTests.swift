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

 // swiftlint:disable:next type_body_length
class ___FILEBASENAMEASIDENTIFIER___WireframeSpec: QuickSpec {
        // swiftlint:disable:next function_body_length
        override func spec() {
                var wireframe: ___FILEBASENAMEASIDENTIFIER___Wireframe!

                var presenterMock: ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterfaceMock!
                var viewMock: ___FILEBASENAMEASIDENTIFIER___NavigationInterfaceMock!

                describe("a ___FILEBASENAMEASIDENTIFIER___ wireframes") {
                        beforeEach {
                                wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()
                                presenterMock = ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterfaceMock()
                                viewMock = ___FILEBASENAMEASIDENTIFIER___NavigationInterfaceMock()

                                wireframe.presenter = presenterMock
                                wireframe.view = viewMock
                        }

                        // MARK: - Init
                        describe("init function") {
                                it("instantiates and connect the VIPER stack") {
                                        // Arrange
                                        wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()

                                        // Act

                                        // Assert
                                        expect(wireframe).toNot(beNil())
                                        expect(wireframe.moduleInteractor).toNot(beNil())
                                        expect(wireframe.modulePresenter).toNot(beNil())
                                        expect(wireframe.moduleView).toNot(beNil())

                                        expect(wireframe.moduleInteractor.presenter).to(beIdenticalTo(wireframe.modulePresenter))

                                        expect(wireframe.modulePresenter.interactor).to(beIdenticalTo(wireframe.moduleInteractor))
                                        expect(wireframe.modulePresenter.view).to(beIdenticalTo(wireframe.moduleView))
                                        expect(wireframe.modulePresenter.wireframe).to(beIdenticalTo(wireframe))

                                        expect(wireframe.moduleView.presenter).to(beIdenticalTo(wireframe.modulePresenter))

                                        expect(wireframe.presenter).to(beIdenticalTo(wireframe.modulePresenter))
                                        expect(wireframe.view).to(beIdenticalTo(wireframe.moduleView))
                                }
                        }

                        // MARK: - Class Functions
                        describe("storyboard class function") {
                                it("returns the storyboard with the ___FILEBASENAMEASIDENTIFIER___ storyboard identifier") {
                                        // Arrange
                                        let storyboard = ___FILEBASENAMEASIDENTIFIER___Wireframe.storyboard()

                                        // Act

                                        // Assert
                                        let storyboardName = storyboard.valueForKey("name") as? String
                                        expect(storyboardName).toNot(beNil())
                                        expect(storyboardName).to(equal(k___FILEBASENAMEASIDENTIFIER___StoryboardIdentifier))
                                }
                        }

                        // MARK: - Operational
                        describe("get delegate function") {
                                it("should ask presenter for the module's delegate") {
                                        // Arrange

                                        // Act
                                        let _ = wireframe.delegate

                                        // Assert
                                        expect(presenterMock.functionsCalled).to(contain("delegate:get"))
                                }
                        }

                        describe("set delegate function") {
                                it("tells presenter to set the module delegate") {
                                        // Arrange
                                        let delegateMock = ___FILEBASENAMEASIDENTIFIER___DelegateMock()

                                        // Act
                                        wireframe.delegate = delegateMock

                                        // Assert
                                        expect(presenterMock.functionsCalled).to(contain("set:delegate"))
                                        expect(presenterMock.modifiedDelegate).to(beIdenticalTo(delegateMock))
                                }
                        }

                        // MARK: - Module Interface

                        // MARK: - Presenter to Wireframe Interface
                }
        }
}
// swiftlint:disable:this file_length
