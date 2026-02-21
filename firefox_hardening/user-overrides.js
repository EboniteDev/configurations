/* 7002: set default permissions > TO BLOCK ALL by default
 * Location, Camera, Microphone, Notifications [FF58+] Virtual Reality [FF73+]
 * 0=always ask (default), 1=allow, 2=block
 * [WHY] These are fingerprintable via Permissions API, except VR. Just add site
 * exceptions as allow/block for frequently visited/annoying sites: i.e. not global
 * [SETTING] to add site exceptions: Ctrl+I>Permissions>
 * [SETTING] to manage site exceptions: Options>Privacy & Security>Permissions>Settings ***/
   user_pref("permissions.default.geo", 2);
   user_pref("permissions.default.camera", 2);
   user_pref("permissions.default.microphone", 2);
   user_pref("permissions.default.desktop-notification", 2);
   user_pref("permissions.default.xr", 2); // Virtual Reality

//	Do NOT resist fingerprint > why? > Dark theme for websites
/* 4501: enable RFP
 * [NOTE] pbmode applies if true and the original pref is false
 * [SETUP-WEB] RFP can cause some website breakage: mainly canvas, use a canvas site exception via the urlbar.
 * RFP also has a few side effects: mainly that timezone is GMT, and websites will prefer light theme ***/
   user_pref("privacy.resistFingerprinting", false); // [FF41+]
