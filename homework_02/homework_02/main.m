//
//  main.m
//  homework_02
//
//  Created by 王子俊 on 2022/7/19.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    Student*s=[Student new];
    
    s->name=@"Zachariah";
    s->major=@"software engineering";
    s->age=19;
    
    [s study:10.2];
    return 0;
}
