//
//  ProductViewController.m
//  GoodAsOldPhones
//
//  Created by Ashscar on 17/6/19.
//  Copyright © 2017年 Ashscar. All rights reserved.
//

#import "ProductViewController.h"
#import "Product.h"


@interface ProductViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *name;
@end

@implementation ProductViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.products.fullscreenImageName) {
        self.imageView.image = [UIImage imageNamed:self.products.fullscreenImageName];
    }
    self.name.text = self.products.name;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)add:(id)sender {
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
