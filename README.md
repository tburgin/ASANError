# ASANError

```
bazel test --test_output=all --verbose_failures --features=asan --config=asan :FakeTest
```

You may need to update the path to `libclang_rt.asan_osx_dynamic.dylib` here:

https://github.com/tburgin/ASANError/blob/main/helper.bzl#L54
