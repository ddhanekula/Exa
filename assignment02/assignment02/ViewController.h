//
//  ViewController.h
//  assignment02
//
//  Created by Dinesh Kumar Dhanekula on 1/6/16.
//  Copyright © 2016 Dinesh Kumar Dhanekula. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//@property (weak, nonatomic) IBOutlet UIButton *numberButton;
- (IBAction)number:(UIButton *)sender;
- (IBAction)add:(UIButton *)sender;
- (IBAction)clear:(UIButton *)sender;
- (IBAction)mul:(UIButton *)sender;
- (IBAction)div:(UIButton *)sender;
- (IBAction)sub:(UIButton *)sender;
- (IBAction)equal:(UIButton *)sender;

@end

