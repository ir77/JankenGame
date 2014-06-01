//
//  ViewController.h
//  JannkenGame
//
//  Created by ucuc on 2014/05/29.
//  Copyright (c) 2014年 ucuc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)guButton:(id)sender;
- (IBAction)chokiButton:(id)sender;
- (IBAction)paButton:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UIImageView *enemyHand;
@property (weak, nonatomic) IBOutlet UIImageView *myHand;


@end
