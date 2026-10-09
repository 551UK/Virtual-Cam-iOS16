# Virtual Cam — RootHide

Clean RootHide build of Virtual Cam for iOS 16.

This build keeps the Camera floating UI working under RootHide and uses a small RootHide loader to inject the camera pipeline components into `mediaserverd`, where RootHide's normal automatic tweak-loading path is not reliable for this tweak.

## Features

- Use a selected video or picture in place of the real camera feed.
- Videos loop and can provide their audio.
- Pictures remain as a still camera feed while the normal microphone remains available.
- Floating UI in the stock Camera app.
- Rotation and flip controls.
- App whitelist support.

## Requirements

- iOS 16
- RootHide
- ElleKit
- PreferenceLoader
- libSandy (`com.opa334.libsandy`)

The rootless build remains on `main` and is untouched.
