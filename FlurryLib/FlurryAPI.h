//
//  FlurryAPI.h
//  Flurry
//
//  Created by Corey Johnson on 11/2/08.
//
#import <UIKit/UIKit.h>

@class CLLocationManager;
@class CLLocation;

@interface FlurryAPI : NSObject {
}

+ (void)startSession:(NSString *)apiKey;
+ (void)logEvent:(NSString *)eventName;
+ (void)logEvent:(NSString *)eventName withParameters:(NSDictionary *)parameters;
+ (void)logError:(NSString *)errorID message:(NSString *)message exception:(NSException *)exception;


+ (void)setServerURL:(NSString *)url;

// Only availible if using library with location services
+ (CLLocationManager *)startSessionWithLocationServices:(NSString *)apiKey;
+ (void)setLocation:(CLLocation *)location;

@end