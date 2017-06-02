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

    
    BOOL canProcess = [self.delegate canProcessPayment];
    
    switch (canProcess) {
        case YES:{
            [self.delegate processPaymentAmount:amount];
        }
            break;
        case NO:{
            NSLog(@"Sorry, can't process your payment\n\n");
        }
            break;
            
        default:
            break;
    }
}

@end
