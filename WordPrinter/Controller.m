//
//  Controller.m
//  WordPrinter
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Controller.h"

@implementation Controller

- (BOOL) isStar: (NSString *) word {
    
    if ([word containsString: @"star"])
        return YES;
    else
        return NO;
}


-(int)printer:(Printer *)printer numberOfTimesToPrint:(NSString *)text {
    
    if ([text hasPrefix:@"A"]) {
//        [@"*" stringByAppendingString:text];
        [[NSMutableString stringWithString:text] insertString:@"$" atIndex:0];

        return 2;
    } else if ([text hasSuffix:@"?"]) {
  //      [@"*" stringByAppendingString:text];
        [[NSMutableString stringWithString:text] insertString:@"$" atIndex:0];

        return 0;
    } else {
    //    [@"*" stringByAppendingString:text];
        [[NSMutableString stringWithString:text] insertString:@"$" atIndex:0];

        return 1;
    }
}

@end
