//
//  GNTextFieldsManager.m
//  ey
//
//  Created by Jakub Knejzlik on 04/09/14.
//  Copyright (c) 2014 Funtasty Digital s.r.o. All rights reserved.
//

#import "GNTextFieldsCollectionManager.h"


@interface GNTextFieldsCollectionManager () <UITextFieldDelegate>
@end

@implementation GNTextFieldsCollectionManager

-(id)initWithView:(UIView *)view{
    return [self initWithTextFields:[GNTextFieldsCollectionManager textFieldsFromView:view]];
}

-(id)initWithTextFields:(NSArray *)textFields{
    self = [super init];
    if (self) {
        _textFields = textFields;
        [self initializeTextFields];
    }
    return self;
}


-(void)initializeTextFields{
    for (UITextField *tf in self.textFields) {
        if(tf != [self.textFields lastObject]){
            tf.returnKeyType = UIReturnKeyNext;
        }
        tf.delegate = self;
    }
    UITextField *lastTextField = [self.textFields lastObject];
    self.lastFieldReturnKeyType = lastTextField.returnKeyType;
}

-(void)selectFirstResponder{
    [[self.textFields firstObject] becomeFirstResponder];
}

-(id)forwardingTargetForSelector:(SEL)aSelector{
    return self.delegate;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField == [self.textFields lastObject]) {
        [self.delegate textFieldsCollectionManager:self lastTextFieldShouldReturn:textField];
    }else{
        NSUInteger index = [self.textFields indexOfObject:textField];
        if(index != NSNotFound){
            index++;
            if(index < [self.textFields count]){
                [[self.textFields objectAtIndex:index] becomeFirstResponder];
            }
        }
    }
    return YES;
}



#pragma mark - UIView TextField scan
+(NSArray *)textFieldsFromView:(UIView *)view{
    NSMutableArray *array = [NSMutableArray array];
    [self fillArray:array withTextFieldsFromView:view];
    return [array sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"tag" ascending:YES]]];
}
+(void)fillArray:(NSMutableArray *)array withTextFieldsFromView:(UIView *)view{
    for (UIView *subview in view.subviews) {
        if ([subview isKindOfClass:[UITextField class]]) {
            [array addObject:subview];
        }
        [self fillArray:array withTextFieldsFromView:subview];
    }
}

@end

