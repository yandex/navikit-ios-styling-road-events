#import <Foundation/Foundation.h>

@interface YMKStylingRoadEventsSwiftResources : NSObject
@end

@implementation YMKStylingRoadEventsSwiftResources

+ (NSBundle *)mapkitResourcesBundle
{
    NSURL *contentsURL = [SWIFTPM_MODULE_BUNDLE.bundleURL
        URLByAppendingPathComponent:@"Contents.bundle"
                        isDirectory:YES];
    return contentsURL ? [NSBundle bundleWithURL:contentsURL] : nil;
}

@end
