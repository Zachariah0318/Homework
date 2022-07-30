//
//  Person.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Person.h"

@implementation Address

- (instancetype)initWith:(NSString *)country province:(NSString *)province city:(NSString *)city detail:(NSString* )detail
{
    if (self = [super init])
    {
        self.country=country;
        self.province=province;
        self.city=city;
        self.detail=detail;
    }
    
    return self;
}

@end


@interface Person()

// private
@property (nonatomic, strong) NSDate *registerDate;
@property (nonatomic, strong) NSNumber *idNumber;

@end

@implementation Person

- (instancetype)initWithName:(NSString *)name address:(Address *)address birthday:(nonnull NSDate *)birthday{
    if (self = [super init]) {
        [self createPersonWithName:name ddress:address birthday:birthday];
    }
    return self;
}

- (void)createPersonWithName:(NSString *)name ddress:(Address *)address birthday:(nonnull NSDate *)birthday {
    
    self.name = name;
    self.address = address;
    self.birthday = birthday;
    self.registerDate = [NSDate date];
    
    [self fetchIDWithAddress:address birthday:birthday completion:^(NSNumber *number) {
        self.idNumber = number;
    }];
}

- (void)fetchIDWithAddress:(Address *)address birthday:(nonnull NSDate *)birthday completion:(void(^)(NSNumber *))completion {
    //NetWork
    if (completion) {
        completion(@(222222222222));
    }
}

- (void)bindMother:(Person *)mother {
    
    self.mother = mother;
}

- (void)bindFather:(Person *)father {
    
    self.father = father;
}

- (NSInteger)age {
    NSDate *now = [NSDate date];
    return ([now timeIntervalSince1970] - [self.birthday timeIntervalSince1970])/31536000;//将秒数差转换为年的差距
}

@end
