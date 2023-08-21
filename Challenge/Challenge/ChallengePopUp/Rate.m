//
//  Rate.m
//  Challenge
//
//  Created by Muhammad Ahad on 21/08/2023.
//

#import "Rate.h"


@implementation Rate

-(instancetype) initWithRate: (NSString *)title andCurrency: (NSString *)currency andRate: (NSString *)rate {

    self = [super init];

    if (self) {
        self.title = title;
        self.currency = currency;
        self.rate = rate;
    }
    return self;
}

@end
