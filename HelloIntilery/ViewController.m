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
    
#ifdef DEBUG
    [self.email setText:@"andrew.whitaker@intilery.com"];
    [self handleSignIn:NULL];
#endif
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
    Intilery *intilery = [Intilery sharedInstance];
    [intilery track:@"sign in" properties:@{@"Customer.Email":[self.email text]}];
}

- (IBAction)handleSignOut:(UIButton *)sender {
    [[Intilery sharedInstance] track:@"Sign Out"];
}

- (IBAction)handleSendEvent:(UIButton *)sender {
    Intilery *intilery = [Intilery sharedInstance];
    [intilery track:@"favourite film" properties:@{@"Film.Name":[self.favouriteFilm text]}];
}

- (IBAction)handleSetVisitorProperties:(UIButton *)sender {
    [[Intilery sharedInstance] setVisitorProperties:@{@"Favourite Colour":[self.favouriteColour text]}];
}

- (IBAction)handleGetVisitorProperties:(UIButton *)sender {
    [[Intilery sharedInstance] getVisitorProperties:@[@"Favourite Colour"] callback:
     ^(NSDictionary * properties) {
         [self.properties setText:[NSString stringWithFormat:@"Colour: %@",
                                   [properties valueForKeyPath:@"Favourite Colour.value"]]];
     }];
}

- (IBAction)addWishlistItem:(UIButton *)sender {
}

- (IBAction)removeWishlistItem:(UIButton *)sender {
}

@end
