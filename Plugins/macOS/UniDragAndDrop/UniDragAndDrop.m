#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "GetDragAndDropFilePath.h"

void Initialize(cs_callback callback)
{
    NSArray *ar = [NSApp orderedWindows];
    NSWindow *window = [ar objectAtIndex:0];
    NSView *view = [window contentView];
    
    // Enable DragAndDrop for all screens
    GetDragAndDropFilePath *dview = [[GetDragAndDropFilePath alloc] initWithFrame:view.frame];

    [view addSubview:dview];
    
    // set cs callback Pointer
    [dview setCallback:callback];
}
