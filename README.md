---
tags:
languages: objc
---

Manage Scheme > Share Scheme
Edit the main Scheme
Test -> Post-Actions -> Add Run Script Action
Choose Provide build settings from man project

```
LOG_PATH=`echo "${BUILD_DIR}" | sed "s/Build\/Products/Logs\/Test/"`
"${SRCROOT}/test_runner.sh" "$LOG_PATH" "${SRCROOT}"
```
.xcworkspace/podfile/etc is in the same dir as README
Podfile has been updated with Specta update
Git attributes added
Added test runner and post action
Solution Runs against tests successfully in XCode 6
Test runner actually submits to iron broker
Pushed changes to master
Merged into solution
Merged issues and commits from ios-002 to curriculum
Does it have test?
does it have a solution?
update test runner

DELETE THIS WHEN YOU DO THIS

# <%= project_name %>

## Instructions

## Advanced

## Hints
