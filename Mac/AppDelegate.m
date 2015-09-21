#import "AppDelegate.h"

#import <Hello/Hello.h>

@interface Processor : NSObject <GoHelloProcessor>
@end

@implementation Processor

- (NSString*)Process:(NSString*)string {
  return [NSString stringWithFormat:@"[%@]", string];
}

@end

@interface AppDelegate ()
@property(nonatomic, weak) IBOutlet NSWindow* window;
@property(nonatomic, weak) IBOutlet NSTextField* textField;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification*)notification {
  _textField.stringValue = GoHelloGreetings(@"ME", [[Processor alloc] init]);
}

@end
