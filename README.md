# Virtual Cam

A system-wide virtual camera for **rootless iOS 16**.

Virtual Cam lets you choose a **video (with audio) or photo from your library** and use it in place of your real camera feed.

Tested working on my devices on apps such as Snapchat, Discord, Camera App, Tiktok, Instagram etc. All apps should work. 

You can use my tweak on Snapchat with tweak injection disabled in choicy and it will import videos and pictures from camera roll.

## What it does

- Use a selected **video or picture** as your camera.
- Videos loop automatically.
- Video audio can be used with the virtual camera.
- Pictures stay on screen as a still camera feed while your normal microphone remains available.
- Works with the stock Camera app and supported third-party apps such as Discord.
- Automatically handles video orientation.
- Rotation options: **0°, 90°, 180° and 270°**.
- Flip the feed **horizontally or vertically**.
- Control it from **Settings** or the floating VCam menu.
- Green status = enabled. Red status = disabled.
- 
## Technical

VCam hooks into the iOS camera pipeline and replaces the camera frames with frames decoded from your selected media.

The media handling is designed to avoid blocking camera callbacks when looping videos, changing apps or switching sources. It also includes retry protection for `AVAssetReader` and cleanup for the floating media picker.

## Requirements

- iOS 15 or later
- Rootless jailbreak
- ElleKit
- PreferenceLoader
- libSandy (`com.opa334.libsandy`)

### Choicy

If you use a custom Choicy configuration for an app, make sure **Virtual Cam is allowed to inject into that app**.
