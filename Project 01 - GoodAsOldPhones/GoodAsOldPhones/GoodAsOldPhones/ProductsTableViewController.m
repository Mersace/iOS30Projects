//
//  ProductsTableViewController.m
//  GoodAsOldPhones
//
//  Created by Ashscar on 17/6/19.
//  Copyright © 2017年 Ashscar. All rights reserved.
//

#import "ProductsTableViewController.h"
#import "ProductViewController.h"
#import "Product.h"

@interface ProductsTableViewController ()

@property (nonatomic, strong) NSArray<Product *> *products;

@end



@implementation ProductsTableViewController

static NSString *reuseIdentifier = @"productCell";

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.products = @[[[Product alloc] initWithName:@"1907 Wall Set" cellImageName:@"image-cell1" fullscreenImageName:@"phone-fullscreen1"],[[Product alloc] initWithName:@"1921 Dial Phone" cellImageName:@"image-cell2" fullscreenImageName:@"phone-fullscreen2"],[[Product alloc] initWithName:@"1937 Desk Set" cellImageName:@"image-cell3" fullscreenImageName:@"phone-fullscreen3"], [[Product alloc] initWithName:@"1984 Moto Portable" cellImageName:@"image-cell4" fullscreenImageName:@"phone-fullscreen4"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.products.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.textLabel.text = self.products[indexPath.row].name;
    if (self.products[indexPath.row].cellImageName) {
        cell.imageView.image = [UIImage imageNamed:self.products[indexPath.row].cellImageName];
    }
    return cell;
}
#pragma mark -- View Transfer

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showProduct"]) {
        UITableViewCell *cell = (UITableViewCell *)sender;
        NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
        if ([segue.destinationViewController isKindOfClass:[ProductViewController class]]) {
            ProductViewController *productVc = segue.destinationViewController;
            productVc.products = self.products[indexPath.row];
        }
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
