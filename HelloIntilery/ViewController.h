//
//  ViewController.h
//  HelloIntilery
//
//  Created by Tom McMillen on 04/09/2017.
//  Copyright © 2017 Intilery.com Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *favouriteFilm;
@property (weak, nonatomic) IBOutlet UITextField *favouriteColour;
@property (weak, nonatomic) IBOutlet UILabel *properties;
@property (weak, nonatomic) IBOutlet UITextField *wishlistItem;
@property (weak, nonatomic) IBOutlet UILabel *wishlist;

@end

