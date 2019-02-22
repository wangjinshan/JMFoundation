

//
//  JMFPopController.m
//  JMFoundation
//
//  Created by 山神 on 2019/2/22.
//  Copyright © 2019 山神. All rights reserved.
//

#import "JMFPopController.h"
#import "JMFoundation.h"

@interface JMFPopController ()
@property (nonatomic,strong) NSTimer *timer;
@end

@implementation JMFPopController

-(void)dealloc{
//    [self.timer invalidate];
//    self.timer =nil;
    NSLog(@"JMFPopController----销毁");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    JMFProxy *proxy = [JMFProxy proxyWithTarget:self];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:2 target:proxy selector:@selector(nextAction) userInfo:nil repeats:YES];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];

}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)nextAction{
    NSLog(@"%@",[NSDate date]);
}





@end
