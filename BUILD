load("//:helper.bzl", "santa_unit_test")

objc_library(
    name = "Fake",
    srcs = ["Fake.mm"],
    hdrs = ["Fake.h"],
)
santa_unit_test(
    name = "FakeTest",
    srcs = ["FakeTest.mm"],
    deps = [
        ":Fake",
        "@OCMock",
    ],
)
