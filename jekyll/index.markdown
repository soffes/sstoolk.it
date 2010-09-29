---
layout: default
---

SSToolkit is a collection of well-documented iOS classes for making life easier.

## I am interested in

* [Reporting a bug](http://github.com/samsoffes/sstoolkit/issues)
* [Understanding SSToolkit](/understanding)
* [Documentation](/documentation)
* [Contributing](/contributing)
* [Sample Code](/sample-code)

## Getting Started

SSToolkit aims to be as easy to use as possible. There are some limitations on distributing iOS libraries, so this is the simplest way to get started with SSToolkit. It's painless after this, promise.

### Adding SSToolkit to your project

1. Run the following command to add the submodule. Be sure you have are you in the root of your git repository.

        $ git submodule add git://github.com/samsoffes/sstoolkit.git Frameworks/SSToolkit

2. In Finder, navigate to the `Frameworks/SSToolkit` folder and drag the `xcodeproj` file into the `Frameworks` folder in your Xcode project.

3. In Finder, drag `SSToolkit.bundle` located in `Frameworks/SSToolkit/Resources` into the `Resources` folder in your Xcode project.

4. Select the SSToolkit Xcode project from the sidebar in Xcode. In the file browser on the right in Xcode, click the checkbox next to `libSSToolkit.a`. (If you don't see the file browser, hit Command-Shift-E to toggle it on.)

5. Select your target from the sidebar and open Get Info (Command-I).

6. Choose the *General* tab from the top.

7. Under the *Direct Dependencies* area, click the plus button, select *SSToolkit* from the menu, and choose *Add Target*.

8. Choose the build tab from the top of the window. Make sure the configuration dropdown at the top is set to *All Configurations*.

9. Add `Frameworks/SSToolkit` to *Header Search Path* (do not click the *Recursive* checkbox).

10. Add `-all_load -ObjC` to *Other Linker Flags*.

### Usage

To use SSToolkit, simply add the following line to your source file.

    #import <SSToolkit/SSToolkit.h>

You can add this to your prefix to make things easy if you want. You can also import individual files instead of the whole framework (for faster compile times) by doing something like:

    #import <SSToolkit/SSLoadingView.h>

If you are going to use SSToolkit's categories, you will need to import then separately (since some people might not want to use them). You import then like this:

    #import <SSToolkit/SSCategories.h>

## Thanks

Huge thanks to [our contributors](http://github.com/samsoffes/sstoolkit/contributors)!

If you're using this in your project, I'd love to hear about it! [Send me an email](mailto:sam@samsoff.es) and let me know which pieces you're using and such.
