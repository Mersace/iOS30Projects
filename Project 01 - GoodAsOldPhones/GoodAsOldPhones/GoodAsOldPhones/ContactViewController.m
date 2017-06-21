//
//  ContactViewController.m
//  GoodAsOldPhones
//
//  Created by Ashscar on 17/6/19.
//  Copyright © 2017年 Ashscar. All rights reserved.
//

#import "ContactViewController.h"

@interface ContactViewController ()
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.scrollView];
}

- (void)viewWillLayoutSubviews {
    self.scrollView.contentSize = CGSizeMake(375, 800);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
