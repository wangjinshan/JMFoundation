//
//  ViewController.m
//  JMFoundation
//
//  Created by 山神 on 2019/2/21.
//  Copyright © 2019 山神. All rights reserved.
//

#import "ViewController.h"
#import "JMFPopController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    JMFPopController *vc =[[JMFPopController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}




@end
