//
//  Printer.m
//  WordPrinter
//
//  Created by Hyung Jip Moon on 2017-02-10.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Printer.h"

@interface Printer ()
//@property  NSString* someWord;


@end

@implementation Printer

-(void)printWord:(NSString *)word {
    
    int howManyTimes = [self.delegate printer:self numberOfTimesToPrint:word];
    for (int i = 0; i < howManyTimes; ++i) {
        //[@"*" stringByAppendingString:word];
        [[NSMutableString stringWithString:word] insertString:@"$" atIndex:0];

        NSLog(@"Print a word: %@\n", word);
        

    }
}

@end
