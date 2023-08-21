//
//  Rate.h
//  Challenge
//
//  Created by Muhammad Ahad on 21/08/2023.
//

#import <Foundation/Foundation.h>

@interface Rate : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *currency;
@property (strong, nonatomic) NSString *rate;

- (instancetype) initWithRate: (NSString *)title andCurrency: (NSString *)currency andRate: (NSString *)rate;

@end
