#include "Fake.h"

#include <memory>

#import <OCMock/OCMock.h>
#import <XCTest/XCTest.h>

@interface FakeTest : XCTestCase
@end

@implementation FakeTest

- (void)setUp {
  printf("\n\nSET UP\n");
}

- (void)tearDown {
  printf("\n\nTEAR DOWN\n");
}


- (void)testFake {
  std::shared_ptr<int> obj(std::make_shared<int>(42));
  DerivedFake *fake = [[DerivedFake alloc] initWithObj:obj];
  id mockFake __unused = OCMPartialMock(fake);
}

@end
