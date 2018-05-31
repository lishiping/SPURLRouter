//
//  ViewController.m
//  SPURLRouter
//
//  Created by shiping li on 2018/4/26.
//  Copyright © 2018年 lishiping copyright. All rights reserved.
//

#import "ViewController.h"
#import "SPURLRouter.h"
#import "RegisterVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"首页";
    self.view.backgroundColor = [UIColor greenColor];
    
    UIButton *testbutton = [UIButton buttonWithType:UIButtonTypeCustom];
    testbutton.frame = CGRectMake(50, 50, (300),(50));
    [testbutton setTitle:@"使用url的scheme方式打开" forState:UIControlStateNormal];
    testbutton.backgroundColor = [UIColor redColor];
    [testbutton addTarget:self action:@selector(btnOnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testbutton];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(50, 150, (300), (50));
    [button2 setTitle:@"使用路由打开一个页面" forState:UIControlStateNormal];
    button2.backgroundColor = [UIColor redColor];
    [button2 addTarget:self action:@selector(button2OnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake(50, 250, (300), (50));
    [button3 setTitle:@"在当前APP内部打开一个网页" forState:UIControlStateNormal];
    button3.backgroundColor = [UIColor redColor];
    [button3 addTarget:self action:@selector(button3OnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    
}


- (void)btnOnClick:(id)sender {
    
    //当appear_type=0或者不设置或者设置其他别的值该参数的时候，push推进去，当appear_type=1的时候，prsent弹出，
    //当animated=0的时候无动画，animated=1或者其他任何值或者不设置这个参数默认有动画
    NSString *urlString =@"lishiping://login?title=loginViewController&username=lishiping&password=123456&appear_type=0&animated=1";
    
    SP_APP_OPEN_URL_STRING(urlString)
    
}

- (void)button2OnClick:(id)sender
{
    //简单弹出方式
    //    SP_PRESENT_VC_BY_CLASSNAME(@"RegisterVC", nil)
    
    //简单推出方式
    //    SP_PUSH_VC_BY_CLASSNAME(@"RegisterVC", @{@"title":@"注册页面"})
    
    //推出对象
    RegisterVC *registerVC = [RegisterVC new];
    SP_PUSH_VC(registerVC)
}

- (void)button3OnClick:(id)sender
{
    //打开一个url
    //类实现
    //    [SPHandleOpenURLManager application:nil openURL:[NSURL URLWithString:@"https://www.baidu.com/"] options:nil];
    
    //宏实现更方便
    SP_INAPP_OPEN_URL_STRING(@"https://mp.weixin.qq.com/s/2xT3AR8GJ4-vtBYKQhzqlw")
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
