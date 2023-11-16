/*

  pbsync

  entitlements:
  https://newosxbook.com/ent.jl?ent=com.apple.Pasteboard.background-access
*/

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

int main(int argc, char const *argv[]) {
  if (argc > 1) {
    NSString *str = [NSString stringWithCString:argv[1]
                                       encoding:NSUTF8StringEncoding];
    [[UIPasteboard generalPasteboard] setString:str];
    sleep(1); // the above is async call, give it a chanse to finish
    NSLog(@"saved to pasteboard: %@", str);
  } else {
    NSString *str = [[UIPasteboard generalPasteboard] string];
    NSLog(@"retrieved from pasteboard: %@", str);
  }
  return 0;
}