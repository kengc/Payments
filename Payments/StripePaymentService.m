//
//  StripePaymentService.m
//  Payments
//
//  Created by Kevin Cleathero on 2017-06-02.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "StripePaymentService.h"


@implementation StripePaymentService 

-(void)processPaymentAmount:(NSInteger)amount{
    NSLog(@"Stripe Payment Here Here : %ld", (long)amount);
}


@end
