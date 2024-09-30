# Tabler Icons for Swift Package Manager

This repository integrates [Tabler Icons](https://tabler.io/icons) and makes them available through the Swift Package Manager (SPM). With this package, you can easily use Tabler icons in your macOS and iOS applications.

## Features

- Supports both filled and outlined versions
- Type safe, you just use `TablerIcons` 😉
- **Tabler version used: `v3.16.0`**

## Installation Guide

To install this package using Swift Package Manager, follow these steps:

1. Open your Xcode project.
2. Select your project in the Project Navigator.
3. Choose the `Package Dependencies` tab.
4. Click the `+` button to add a new package dependency.
5. Enter the URL of this repository: `https://github.com/YazeedAlKhalaf/tabler-icons-swift.git`.
6. Select the version you want to use, then click `Add Package`.

## Usage

After installing the package, you can start using Tabler icons in your project.

### Importing the Package

In your Swift files, import the package:

```swift
import TablerIcons
```

## Usage for iOS

For iOS, the `UIImage` extension provides a convenient initializer that loads images by their Tabler name directly from the module's bundle:

```swift
import UIKit

let image: UIImage = TablerIcons.appleFilled
```

## Usage for macOS

For macOS, the NSImage extension offers a static function that fetches images by their Tabler name from the module’s bundle:

```swift
import AppKit

let image: NSImage = TablerIcons.appleFilled
```

## Usage for SwiftUI

```swift
import SwiftUI
import TablerIcons

struct ContentView: View {
    var body: some View {
        VStack {
            Image(nsImage: TablerIcons.appleFilled) // For macOS
            Image(uiImage: TablerIcons.appleFilled) // For iOS
            Text("Hello, Tabler Icons!")
        }
    }
}
```

## Viewing All Icons

You can view all available icons at [tabler.io/icons](https://tabler.io/icons).

Enjoy using Tabler Icons in your Swift projects!

## Special Thanks

> [!IMPORTANT]
> a lot of the code is inspired by this project: https://github.com/JakubMazur/lucide-icons-swift
