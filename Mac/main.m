#import <Foundation/Foundation.h>

#import <Hello/Hello.h>

int main(int argc, const char* argv[]) {
  @autoreleasepool {
    NSLog(@"%@", GoHelloGreetings(@"ME"));
  }
  return 0;
}
