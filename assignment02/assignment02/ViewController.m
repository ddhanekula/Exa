//
//  ViewController.m
//  assignment02
//
//  Created by Dinesh Kumar Dhanekula on 1/6/16.
//  Copyright © 2016 Dinesh Kumar Dhanekula. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *input;
@property(strong)NSString *appendedString;
@property(strong)NSString *sampleString;

@end

@implementation ViewController

float sampleValue=0;
float sampleValueMul=1;
float sampleValuediv=1.0;
float samplevaluesub=0;

int operation;
int goaway=10;
bool test=false;
bool test2=false;
bool test3=false;


- (void)viewDidLoad
{   [super viewDidLoad];
    
    _appendedString=@"";
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)number:(UIButton *)sender
{
    _appendedString=[_appendedString stringByAppendingString:sender.titleLabel.text];
    _input.text=_appendedString;
}

- (IBAction)add:(UIButton *)sender
{
    sampleValue = [_input.text floatValue]+sampleValue;
    _input.text=[NSString stringWithFormat:@"%.1f",sampleValue];
    _appendedString=@"";
    operation=1;
}

- (IBAction)clear:(UIButton *)sender
{
    _appendedString=@"";
    _input.text=@"";
     sampleValue=0;
    sampleValueMul=1;
    sampleValuediv=1;
    test=false;
    test2=false;
}


- (IBAction)mul:(UIButton *)sender
{
    sampleValueMul = [_input.text floatValue]*sampleValueMul;
    _input.text=[NSString stringWithFormat:@"%.1f",sampleValueMul];
    _appendedString=@"";
    operation=3;
}

- (IBAction)div:(UIButton *)sender
{
if(test==false)
{
    sampleValuediv =  [_input.text floatValue] / sampleValuediv;
    _input.text=[NSString stringWithFormat:@"%.1f",sampleValuediv];
    _appendedString=@"";
    operation=4;
    test=true;
}
    else{
    sampleValuediv =  sampleValuediv / [_input.text floatValue];
    _input.text=[NSString stringWithFormat:@"%.1f",sampleValuediv];
    _appendedString=@"";
    operation=4;
}
}

- (IBAction)sub:(UIButton *)sender
{
    if(test2 ==false)
    {
    sampleValue = [_input.text floatValue]-sampleValue;
    _input.text=[NSString stringWithFormat:@"%.1f",sampleValue];
    _appendedString=@"";
        test2=true;
    operation=2;
        
    }
    else{
        sampleValue = sampleValue-[_input.text floatValue];
        _input.text=[NSString stringWithFormat:@"%.1f",sampleValue];
        _appendedString=@"";
        operation=2;
    
    }
}

- (IBAction)equal:(UIButton *)sender
{
    switch (operation)
    {
        case 1:
            sampleValue = [_input.text floatValue]+sampleValue;
             _input.text=[NSString stringWithFormat:@"%.1f",sampleValue];
             _appendedString=@"";
             operation=0;
            break;
        case 2:
            if(test2 ==false)
            {
                sampleValue = [_input.text floatValue]-sampleValue;
                _input.text=[NSString stringWithFormat:@"%.1f",sampleValue];
                _appendedString=@"";
                test2=true;
                operation=0;
                
            }
            else{
                sampleValue = sampleValue-[_input.text floatValue];
                _input.text=[NSString stringWithFormat:@"%.1f",sampleValue];
                _appendedString=@"";
                operation=0;
                
            }
            break;
        case 3:
            sampleValueMul = [_input.text floatValue]*sampleValueMul;
            _input.text=[NSString stringWithFormat:@"%.1f",sampleValueMul];
            _appendedString=@"";
            operation=0;
            break;
        case 4:
        
            if(test==false)
            {
            sampleValuediv =  [_input.text floatValue] / sampleValuediv;
            _input.text=[NSString stringWithFormat:@"%.1f",sampleValuediv];
            _appendedString=@"";
            operation=0;
            test=true;
        }
            else{
                sampleValuediv =  sampleValuediv / [_input.text floatValue];
                _input.text=[NSString stringWithFormat:@"%.1f",sampleValuediv];
                _appendedString=@"";
                operation=0;
            }
            break;
            
        default:
            break;
    }
}
@end
