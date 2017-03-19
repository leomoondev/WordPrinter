//
//  Printer.m
//  WordPrinter
//
//  Created by Hyung Jip Moon on 2017-02-10.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Printer.h"

@interface Printer ()
@end

@implementation Printer

-(void)printWord:(NSString *)word {
    
    if ([self.delegate isStar: word]) {
        
        int  howManyTimes = [self.delegate printer: self numberOfTimesToPrint: word];
        
        for (int i = 0; i < howManyTimes; i++) {
            NSLog(@"Print a star word: %@\n", [@"*" stringByAppendingString: [word stringByAppendingString: @"*"]]);
        }
    }
    
    else {
        
        int howManyTimes = [self.delegate printer: self numberOfTimesToPrint: word];
        
        for (int i = 0; i < howManyTimes; i++)
            NSLog(@"Print a word: %@\n", word);
    }
}

@end
