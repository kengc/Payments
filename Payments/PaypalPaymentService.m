//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Kevin Cleathero on 2017-06-02.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void)processPaymentAmount:(NSInteger)amount{
    NSLog(@"Payal processed: $%ld", (long)amount);
}

-(BOOL)canProcessPayment{
    int canProcess = arc4random_uniform(2);
    
    switch (canProcess) {
        case 0:
            return NO;
            break;
        case 1:
            return YES;
            break;
            
        default:
            break;
    }
    return 1;
}

@end
