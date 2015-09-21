#import "ViewController.h"

#import <Hello/Hello.h>

@interface Processor : NSObject <GoHelloProcessor>
@end

@implementation Processor

- (NSString*)Process:(NSString*)string {
  return [NSString stringWithFormat:@"[%@]", string];
}

@end

@interface ViewController ()
@property(nonatomic, weak) IBOutlet UILabel* label;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.view.backgroundColor = [UIColor redColor];
  _label.text = GoHelloGreetings(@"ME", [[Processor alloc] init]);
}

@end
