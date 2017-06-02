//
//  PaymentGateway.m
//  Payments
//
//  Created by Kevin Cleathero on 2017-06-02.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "PaymentGateway.h"


@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)amount{
    //-(void)processPaymentAmount:(NSInteger)amount;
    //[self.delegate kitchenShouldUpgradeOrder:self];
    
    [self.delegate processPaymentAmount:amount];
    //NSLog(@"Payment gateway here got %ld", (long)amount);
}

@end
