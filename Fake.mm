#include "Fake.h"

#include <map>

@implementation BaseFake {
  std::shared_ptr<int> _obj;
}

- (void)dealloc {
  // Keep .cxx_destruct's hands off of _obj. This makes ASAN happy.
  // _obj = nullptr;
}

- (instancetype)initWithObj:(std::shared_ptr<int>)obj {
  self = [super init];
  if (self) {
    _obj = obj;
  }
  return self;
}

@end

@implementation DerivedFake {
  // Somehow this also can make ASAN happy.
  // std::map<int, int> unused;
}

- (instancetype)initWithObj:(std::shared_ptr<int>)obj {
  return [super initWithObj:obj];
}

@end
