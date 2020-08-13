#import "GetDragAndDropFilePath.h"

@implementation GetDragAndDropFilePath

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self)
    {
        [self registerForDraggedTypes:[NSImage imageTypes]];
    }
    return self;
}

- (NSDragOperation)draggingEntered:(id <NSDraggingInfo>)sender
{
    return NSDragOperationEvery;
}

- (void)setCallback:(cs_callback) callback
{
    _callback = callback;
}

- (BOOL)prepareForDragOperation:(id <NSDraggingInfo>)sender
{
    // Flag to allow drag and drop
    return YES;
} 

- (BOOL)performDragOperation:(id <NSDraggingInfo>)sender
{
    NSURL* fileURL = [NSURL URLFromPasteboard: [sender draggingPasteboard]];
    NSString *url = fileURL!=NULL ? [fileURL path] : @"";
    const char *path = [url UTF8String];
    _callback(path);
    
    // If you set it to YES, the dropped image will be displayed
    return NO;
}

@end
