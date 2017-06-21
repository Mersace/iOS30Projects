//
//  Product.m
//  GoodAsOldPhones
//
//  Created by Ashscar on 17/6/19.
//  Copyright © 2017年 Ashscar. All rights reserved.
//

#import "Product.h"

@implementation Product

- (instancetype)initWithName:(NSString *)name cellImageName:(NSString *)cellImageName fullscreenImageName:(NSString *)fullscreenImageName {
    if (self = [super init]) {
        self.name = name;
        self.cellImageName = cellImageName;
        self.fullscreenImageName = fullscreenImageName;
    }
    return self;
}

@end
