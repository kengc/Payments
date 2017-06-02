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
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        do{
        
        NSInteger random = arc4random_uniform(900) + 100;
        int input = [InputHandler getUserInput:random];
        PaymentGateway *pmtGate = [[PaymentGateway alloc] init];
        //[pmtGate processPaymentAmount:random];
        
        
        //1: Paypal, 2: Stripe, 3: Amazon 
        switch (input) {
            case 1:{
                PaypalPaymentService *ppGate = [[PaypalPaymentService alloc] init];
                pmtGate.delegate = ppGate;
                [pmtGate processPaymentAmount:random];
            }
                break;
            case 2:{
                StripePaymentService * stripePay = [[StripePaymentService alloc] init];
                pmtGate.delegate = stripePay;
                [pmtGate processPaymentAmount:random];
            }
                break;
            case 3:{
                AmazonPaymentService *amazonPay = [[AmazonPaymentService alloc] init];
                pmtGate.delegate = amazonPay;
                [pmtGate processPaymentAmount:random];
            }
                break;
                
            default:
                break;
        }
        }while(1);
        
    }
    return 0;
}
