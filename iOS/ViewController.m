#import "ViewController.h"

#import <Hello/Hello.h>

@interface ViewController ()
@property(nonatomic, weak) IBOutlet UILabel* label;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.view.backgroundColor = [UIColor redColor];
  _label.text = GoHelloGreetings(@"ME");
}

@end
