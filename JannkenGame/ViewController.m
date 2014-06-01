//
//  ViewController.m
//  JannkenGame
//
//  Created by ucuc on 2014/05/29.
//  Copyright (c) 2014年 ucuc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)guButton:(id)sender {
    NSLog(@"guu button pushed");
    // 自分の手を表示
    self.myHand.image = [UIImage imageNamed:@"janken_gu"];
    [self battle:1];
}

- (IBAction)chokiButton:(id)sender {
    NSLog(@"choki button pushed");
    // 自分の手を表示
    self.myHand.image = [UIImage imageNamed:@"janken_choki"];
    [self battle:2];
}

- (IBAction)paButton:(id)sender {
    NSLog(@"pa button pushed");
    // 自分の手を表示
    self.myHand.image = [UIImage imageNamed:@"janken_pa"];
    [self battle:3];
}

- (void) battle:(int) myHandNumber{
    //自分の手の画像の大きさを修正
    self.myHand.contentMode = UIViewContentModeScaleAspectFit;
    //1から3をランダムに生成
    //敵の手を決定（1→グー, 2→チョキ, 3→パー）
    int enemyHandNumber = arc4random() % 3 + 1;

    switch (enemyHandNumber) {
        case 1:
            self.enemyHand.image = [UIImage imageNamed:@"janken_gu"];
            break;
        case 2:
            self.enemyHand.image = [UIImage imageNamed:@"janken_choki"];
            break;
        case 3:
            self.enemyHand.image = [UIImage imageNamed:@"janken_pa"];
            break;
    }
    
    self.enemyHand.contentMode = UIViewContentModeScaleAspectFit;

    if (myHandNumber == enemyHandNumber) {
        self.myLabel.text = @"あいこです";
    } else if (myHandNumber == 1) {
        if (enemyHandNumber == 2) {
            self.myLabel.text = @"あなたの勝ちです";
        } else if (enemyHandNumber == 3) {
            self.myLabel.text = @"あなたの負けです";
        }

    } else if (myHandNumber == 2) {
        if (enemyHandNumber == 3) {
            self.myLabel.text = @"あなたの勝ちです";
        } else if (enemyHandNumber == 1) {
            self.myLabel.text = @"あなたの負けです";
        }
        
    } else if (myHandNumber == 3) {
        if (enemyHandNumber == 1) {
            self.myLabel.text = @"あなたの勝ちです";
        } else if (enemyHandNumber == 2) {
            self.myLabel.text = @"あなたの負けです";
        }
        
    }
}
@end
