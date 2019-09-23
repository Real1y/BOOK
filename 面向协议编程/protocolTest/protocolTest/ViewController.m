//
//  ViewController.m
//  protocolTest
//
//  Created by 邰光源 on 2019/7/10.
//  Copyright © 2019 broadlink. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%@",[BL_GET_UIM_OBJ getUserName]);
}


@end
