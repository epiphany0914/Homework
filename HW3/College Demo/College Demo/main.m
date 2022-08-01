//
//  main.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

// Mac 同学用这个
int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    NSLog(@"%@",@"hello world");
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}


// Windows 同学用这个

//#import <Foundation/Foundation.h>
//
//int main (int argc, const char *argv[])
//{
//    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
//    NSLog(@"%@",@"hello world");
//    [pool drain];
//    return 0;
//}
