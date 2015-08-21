//
//  GNTextFieldsManager.h
//  ey
//
//  Created by Jakub Knejzlik on 04/09/14.
//  Copyright (c) 2014 Funtasty Digital s.r.o. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GNTextFieldsCollectionManagerDelegate;

@interface GNTextFieldsCollectionManager : NSObject
@property (nonatomic,readonly) NSArray *textFields;
@property (nonatomic,assign) id<GNTextFieldsCollectionManagerDelegate> delegate;

/**
 Return key type of last field. This value defaults to last return key type of last textField in collection.
 */
@property UIReturnKeyType lastFieldReturnKeyType;


/**
 Populates all textfields in view, sort them by tag and call initWithTextFields:
 */
-(id)initWithView:(UIView *)view;

-(id)initWithTextFields:(NSArray *)textFields;


/**
 First textField becomes first responder
 */
-(void)selectFirstResponder;

@end


@protocol GNTextFieldsCollectionManagerDelegate <UITextFieldDelegate>

-(void)textFieldsCollectionManager:(GNTextFieldsCollectionManager *)manager lastTextFieldShouldReturn:(UITextField *)textField;

@end
