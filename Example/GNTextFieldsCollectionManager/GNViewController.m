//
//  GNViewController.m
//  GNTextFieldsCollectionManager
//
//  Created by Jakub Knejzlik on 08/21/2015.
//  Copyright (c) 2015 Jakub Knejzlik. All rights reserved.
//

#import "GNViewController.h"

#import "GNTextFieldsCollectionManager.h"

@interface GNViewController () <GNTextFieldsCollectionManagerDelegate>
@property (strong, nonatomic) GNTextFieldsCollectionManager *textFieldManager;
@end

@implementation GNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.textFieldManager = [[GNTextFieldsCollectionManager alloc] initWithView:self.view];
    self.textFieldManager.delegate = self;
}


-(void)textFieldsCollectionManager:(GNTextFieldsCollectionManager *)manager lastTextFieldShouldReturn:(UITextField *)textField;{
    [[[UIAlertView alloc] initWithTitle:@"Nice!" message:@"Last textfield done..." delegate:nil cancelButtonTitle:@"Great, now dismiss" otherButtonTitles:nil] show];
    [textField resignFirstResponder];
}


@end
