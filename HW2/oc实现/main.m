/******************************************************************************

                            Online Objective-C Compiler.
                Code, Compile, Run and Debug Objective-C program online.
Write your code in this editor and press "Run" button to execute it.

*******************************************************************************/


#import <Foundation/Foundation.h>
#import "Student.h"

int main (int argc, const char * argv[])
{
        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
        Student *s = [Student new];
        s->name = @"Wendy";
        s->major = @"physics";
        s->age = 23;
        [s studyTime:8];
        [pool drain];
        return 0;
}
