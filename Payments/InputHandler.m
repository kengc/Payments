//
//  InputHandler.m
//  Payments
//
//  Created by Kevin Cleathero on 2017-06-02.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(int)getUserInput:(NSInteger)random{
    char inputChars[255];
    
    //accept man1 and man2
    NSLog(@"\n");
    NSLog(@"Thank you for shopping at Acme.com");
    NSLog(@"Your total today is $%ld", random);
    NSLog(@"Please select your payment method:\n");
    NSLog(@"1: Paypal, 2: Stripe, 3: Amazon \n");
    
    fgets(inputChars, 255, stdin);
    
    NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    NSString *trimmed = [inputString stringByTrimmingCharactersInSet:characterSet];
    
    int inputNum = [trimmed integerValue];
    NSLog(@"your input was: %d", inputNum);
    
    return inputNum;
    
}


@end
