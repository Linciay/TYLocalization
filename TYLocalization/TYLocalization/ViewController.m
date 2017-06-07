//
//  ViewController.m
//  TYLocalization
//
//  Created by Yang on 2017/6/6.
//  Copyright © 2017年 Tina. All rights reserved.
//

#import "ViewController.h"
#define Localized(key)  [[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"]] ofType:@"lproj"]] localizedStringForKey:(key) value:nil table:@"Localizable"]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:NSLocalizedString(@"mainImage", nil) ]];
    imageView.frame = CGRectMake(0, 0, 100, 100);
    imageView.center = self.view.center;
    [self.view addSubview:imageView];

    UILabel *textLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
    textLabel.center = CGPointMake(imageView.center.x, CGRectGetMaxY(imageView.frame)+25);
    textLabel.text = NSLocalizedString(@"mainText", nil);
    textLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:textLabel];
    
    UILabel *forceLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
    forceLabel.center = CGPointMake(imageView.center.x, CGRectGetMaxY(textLabel.frame)+25);
    forceLabel.text = Localized(@"forceText");
    forceLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:forceLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
