//
//  main.m
//  Payments
//
//  Created by Kevin Cleathero on 2017-06-02.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger random = arc4random_uniform(900) + 100;
        int input = [InputHandler getUserInput:random];
        PaymentGateway *pmtGate = [[PaymentGateway alloc] init];
        [pmtGate processPaymentAmount:random];
        
        
    }
    return 0;
}
