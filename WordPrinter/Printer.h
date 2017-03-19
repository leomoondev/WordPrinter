//
//  Printer.h
//  WordPrinter
//
//  Created by Hyung Jip Moon on 2017-02-10.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Printer;

@protocol PrinterDelegate <NSObject>

-(int)printer:(Printer *)printer numberOfTimesToPrint:(NSString *)word;

@end

@interface Printer : NSObject

@property (nonatomic, weak) id<PrinterDelegate> delegate;
-(void)printWord:(NSString *)word;
-(void)addStar:(NSString *) word;

@end
