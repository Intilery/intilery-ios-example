//
//  ViewController.m
//  HelloIntilery
//
//  Created by Tom McMillen on 04/09/2017.
//  Copyright © 2017 Intilery.com Ltd. All rights reserved.
//

#import "ViewController.h"
#import "Intilery.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)handleSignIn:(UIButton *)sender {
}

- (IBAction)handleSignOut:(UIButton *)sender {
}

- (IBAction)handleSendEvent:(UIButton *)sender {
    Intilery *intilery = [Intilery sharedInstance];
    [intilery track:@"favourite film" properties:@{@"Film.Name":[self.favouriteFilm text]}];
}

- (IBAction)handleSetVisitorProperties:(UIButton *)sender {
}

- (IBAction)handleGetVisitorProperties:(UIButton *)sender {
}

- (IBAction)addWishlistItem:(UIButton *)sender {
}

- (IBAction)removeWishlistItem:(UIButton *)sender {
}

@end
