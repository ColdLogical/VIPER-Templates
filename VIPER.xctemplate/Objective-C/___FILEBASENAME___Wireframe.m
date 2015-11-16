//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___Wireframe.h"

// VIPER
#import "___FILEBASENAMEASIDENTIFIER___Interactor.h"
#import "___FILEBASENAMEASIDENTIFIER___Presenter.h"
#import "___FILEBASENAMEASIDENTIFIER___View.h"

@interface ___FILEBASENAMEASIDENTIFIER___Wireframe ()

@end

@implementation ___FILEBASENAMEASIDENTIFIER___Wireframe

#pragma mark - Init
-(instancetype)init {
        self = [super init];
        
        if (self) {
                ___FILEBASENAMEASIDENTIFIER___Interactor *i = self.moduleInteractor;
                ___FILEBASENAMEASIDENTIFIER___Presenter *p = self.modulePresenter;
                ___FILEBASENAMEASIDENTIFIER___View *v = self.moduleView;
                
                i.presenter = p;
                
                p.interactor = i;
                p.view = v;
                p.wireframe = self;
                
                v.presenter = p;
                
                self.presenter = p;
        }
        
        return self;
}

#pragma mark - Lazy Loaders
-(___FILEBASENAMEASIDENTIFIER___Interactor *)moduleInteractor {
        if(_moduleInteractor != nil) {
                return _moduleInteractor ;
        }
        
        _moduleInteractor = [___FILEBASENAMEASIDENTIFIER___Interactor new];
        
        return _moduleInteractor;
}

-(___FILEBASENAMEASIDENTIFIER___Presenter *)modulePresenter {
        if(_modulePresenter != nil) {
                return _modulePresenter;
        }
        
        _modulePresenter = [___FILEBASENAMEASIDENTIFIER___Presenter new];
        
        return _modulePresenter;
}

 // Uncomment this lazy loader to utilize a navigation controller from storyboard that has the view controller identifier
/*
-(UINavigationController *)moduleNavigationController {
        if(_moduleNavigationController != nil) {
                return _moduleNavigationController;
        }
        
        self.moduleNavigationController = [[self storyboard] instantiateViewControllerWithIdentifier:k___FILEBASENAMEASIDENTIFIER___NavigationController];
 
        return _moduleNavigationController;
}
 */

-(___FILEBASENAMEASIDENTIFIER___View *)moduleView {
        if(_moduleView != nil) {
                return _moduleView;
        }
        
        _moduleView = [[___FILEBASENAMEASIDENTIFIER___Wireframe storyboard] instantiateViewControllerWithIdentifier:k___FILEBASENAMEASIDENTIFIER___ViewIdentifier];
       // Uncomment this code and delete the above code to utilize a navigation controller from storyboard
        /*
        _moduleView = self.moduleNavigationController.viewControllers[0];
        */
        
        return _moduleView;
}

+(UIStoryboard *)storyboard {
        return [UIStoryboard storyboardWithName:k___FILEBASENAMEASIDENTIFIER___Storyboard bundle:[NSBundle mainBundle]];
}

#pragma mark - Operational

#pragma mark - Wireframe Interface

@end