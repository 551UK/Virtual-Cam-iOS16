# Virtual Cam

A system-wide virtual camera for **rootless iOS 16**.

Virtual Cam lets you choose a **video (with audio) or photo from your library** and use it in place of your real camera feed.

Tested working on my devices on apps such as Snapchat, Discord, Camera App, Tiktok, Instagram etc. All apps should work. 

You can use my tweak on Snapchat with tweak injection disabled in choicy and it will import videos and pictures from camera roll.

I have added an app whitelist incase you dont want it injected into certain apps.

## Source code

If you need to source code for your own project & have something i might be interested in feel free to message me. Currently its not open-source since anyone running any kind of vCAM tweak is charging money for it. To avoid people using my source code and adding to it to make money its currently closed source.

## What it does

- Use a selected **video or picture** as your camera.
- Videos loop automatically.
- Video audio can be used with the virtual camera.
- Pictures stay on screen as a still camera feed while your normal microphone remains available.
- Works with the stock Camera app and supported third-party apps such as Discord, Snapchat etc.
- Automatically handles video orientation.
- Rotation options: **0°, 90°, 180° and 270°**.
- Flip the feed **horizontally or vertically**.
- Control it from **Settings** or the floating UI button.

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

If you use a custom Choicy configuration for discord, make sure to not disable all tweaks. Just disable snowboard in the Deny section as this causes Discord to bug out.
