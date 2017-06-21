//
//  Product.h
//  GoodAsOldPhones
//
//  Created by Ashscar on 17/6/19.
//  Copyright © 2017年 Ashscar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *cellImageName;
@property (nonatomic, copy) NSString *fullscreenImageName;

- (instancetype)initWithName:(NSString *)name cellImageName:(NSString *)cellImageName fullscreenImageName:(NSString *)fullscreenImageName;

@end
