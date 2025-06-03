# haskell-library-template

When using [hspec] to test a project that uses [annotated-exception], an
`AnnotatedException` thrown by the code under test does not display well
in Hspec's output. `hspec-annotated-exception` fixes this.

To use this package with Hspec module auto-discovery:

```haskell
module SpecHook (hook) where

import Test.Hspec (Spec)
import Test.Hspec.AnnotatedException (unwrapAnnotatedHUnitFailure)

hook :: Spec -> Spec
hook = unwrapAnnotatedHUnitFailure
```

  [annotated-exception]: https://hackage.haskell.org/package/annotated-exception

  [hspec]: https://hackage.haskell.org/package/hspec

---

[CHANGELOG](./CHANGELOG.md) | [LICENSE](./LICENSE)
