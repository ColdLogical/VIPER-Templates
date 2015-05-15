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
                ___FILEBASENAMEASIDENTIFIER___Interactor *i = self.interactor;
                ___FILEBASENAMEASIDENTIFIER___Presenter *p = self.presenter;
                ___FILEBASENAMEASIDENTIFIER___View *v = self.view;
                
                i.presenter = p;
                
                p.interactor = i;
                p.view = v;
                p.wireframe = self;
                
                v.presenter = p;
        }
        
        return self;
}

#pragma mark - Lazy Loaders
-(___FILEBASENAMEASIDENTIFIER___Interactor *)interactor {
        if(_interactor != nil) {
                return _interactor ;
        }
        
        _interactor = [[___FILEBASENAMEASIDENTIFIER___Interactor alloc] init];
        
        return _interactor;
}

-(___FILEBASENAMEASIDENTIFIER___Presenter *)presenter {
        if(_presenter != nil) {
                return _presenter;
        }
        
        _presenter = [[___FILEBASENAMEASIDENTIFIER___Presenter alloc] init];
        
        return _presenter;
}

-(___FILEBASENAMEASIDENTIFIER___View *)view {
        if(_view != nil) {
                return _view;
        }
        
        _view = [[self storyboard] instantiateViewControllerWithIdentifier:k___FILEBASENAMEASIDENTIFIER___ViewIdentifier];
        
        return _view;
}

-(UIStoryboard *)storyboard {
        return [UIStoryboard storyboardWithName:k___FILEBASENAMEASIDENTIFIER___Storyboard bundle:[NSBundle mainBundle]];
}

#pragma mark - Operational

#pragma mark - Wireframe Interface

@end