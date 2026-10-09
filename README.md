# Virtual Cam — RootHide

This branch contains the **RootHide build** of Virtual Cam for iOS 16.

Virtual Cam lets you choose a **video (with audio) or photo from your library** and use it in place of your real camera feed.

The RootHide build keeps the working Camera-side floating UI and uses a small RootHide launch daemon to load the camera pipeline components into `mediaserverd`, because the normal rootless TweakLoader path does not reliably load those components there under RootHide.

## Features

- Selected videos or pictures replace the real camera feed.
- Videos loop and can provide their audio as the virtual microphone.
- Pictures remain as a still feed while the normal microphone stays available.
- Floating UI in the stock Camera app.
- Settings controls, media orientation, rotation and flip options.
- App whitelist support.

## Requirements

- iOS 16
- RootHide
- ElleKit
- PreferenceLoader
- libSandy (`com.opa334.libsandy`)

The tweak source itself remains closed-source. This branch keeps only the clean RootHide package layout and loader required for the RootHide package.
