//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

// Forward Class Declarations

// VIPER Interface for the module
@protocol ___FILEBASENAMEASIDENTIFIER___Delegate <NSObject>

@end

// VIPER Interface for communication from Interactor -> Presenter
@protocol ___FILEBASENAMEASIDENTIFIER___InteractorToPresenterInterface <NSObject>

@end

// VIPER Interface for communication from View -> Presenter
@protocol ___FILEBASENAMEASIDENTIFIER___ViewToPresenterInterface <NSObject>

@end

// VIPER Interface for communication from Wireframe -> Presenter
@protocol ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface <NSObject>

@property (nonatomic, weak) id<___FILEBASENAMEASIDENTIFIER___Delegate> delegate;

-(void)setDelegate:(id<___FILEBASENAMEASIDENTIFIER___Delegate>)newDelegate;

@end
