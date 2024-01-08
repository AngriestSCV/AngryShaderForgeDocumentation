# Versions

## v 1.5.x Vertex Stage support

- Added range to float properties
- Added [Vertex Normal output](../nodes/#normal-output) node
- Added [Vertex Normal](../nodes/#vertex-normal) input node
- Added [Vertex Position](../nodes/#vertex-position) input node
- Added [Vertex Position output](../nodes/#vertex-position-output) node
- Added [Vertex Position](../nodes/#vertex-position) node
- Updated loading to make loading more reliable.
- Introduced concept for Vertex vs Fragment code
- Added errors for using invalid nodes in the wrong context

### Internal Details
- Now uses Unity dependency injection (not related to Unity Engine despite the name)
- Updated namespaces in C#

## v 1.4.0 Preview node

- Added [Preview](../nodes/#preview) Node


## v 1.3.0 Proximity / Camera Distance

- Added [Camera Distance](../nodes/#camera-distance-proximity) support
- Renamed full send button

## v 1.2.0 Masks and Read Property

- Added [Global Mask](../nodes/#global-mask) support 
- Added [Read Property](../nodes/#read-property) support
- Fixed Nodes with types selectable from a Popup from showing up incorrectly.
- Replaced code that should not be publicly accessible (in the C# sense) with a public call to AddPort
  This refactoring should result in fewer graphical issues with nodes.

## v 1.1.1 Atan2
Added Atan2 and fixed the split node

## v 1.0.2 Initial release

The initial release. 
