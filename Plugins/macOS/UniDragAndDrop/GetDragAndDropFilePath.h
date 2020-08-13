#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

typedef void (*cs_callback)(const char*);

@interface GetDragAndDropFilePath : NSImageView
{
    cs_callback _callback;
}

- (void)setCallback:(cs_callback) callback;

@end
