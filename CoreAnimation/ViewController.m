//
//  ViewController.m
//  CoreAnimation
//
//  Created by Eduardo Alvarado Díaz on 2/8/16.
//  Copyright © 2016 personal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imagen;

@end

@implementation ViewController

- (IBAction)comenzarAnimacion:(id)sender {
    CGFloat x = (CGFloat)(arc4random() % (int)self.view.bounds.size.width);
    CGFloat y = (CGFloat)(arc4random() % (int)self.view.bounds.size.height);

    CGPoint posicion = CGPointMake(x, y);

    UIViewAnimationOptions options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState;


    [UIView animateWithDuration:1.5 delay:0 options:options animations:^{

        self.imagen.center = posicion;

    } completion:^(BOOL finished){

    } ];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
