//
//  PaymentGateway.h
//  Payments
//
//  Created by Kevin Cleathero on 2017-06-02.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PaymentGateway;

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger)amount;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> delegate;


-(void)processPaymentAmount:(NSInteger)amount;



@end
