set -l listencoders #TODO
set -l listcameras #TODO
set -l listdisplays #TODO
set -l listcamerasize #TODO

set -l verbosity           verbose debug info warn error
set -l audio_codec         opus aac flac raw
set -l camera_facing       front back external
set -l record_format       mp4 mkv m4a mka opus aac flac wav
set -l display_orientation 0 90 180 270 flip0 flip90 flip180 flip270
set -l record_orientation  0 90 180 270
set -l capture_orientation 0 90 180 270 flip0 flip90 flip180 flip270 @0 @90 @180 @270 @flip0 @flip90 @flip180 @flip270
set -l render_driver       direct3d opengl opengles2 opengles metal software
set -l shortcut_mod        ctrl rctrl lalt ralt lsuper rsuper

complete -f scrcpy 
complete -f scrcpy -s G                                                   -d "Same as --gamepad=uhid/--gamepad=aoa"
complete -f scrcpy -s K                                                   -d "Same as --keyboard=uhid/--keyboard=aoa"
complete -f scrcpy -s M                                                   -d "Same as --mouse=uhid/--mouse=aoa"
complete -x scrcpy -s b -l video-bit-rate                                 -d "Encode the video at the given bit rate"
complete -x scrcpy -s m -l max-size                                       -d "Limit both the width and height of the video to value"
complete -x scrcpy -s p -l port                                           -d "Set the TCP port (range) used by the client to listen"
complete -x scrcpy -s s -l serial                                         -d "The device serial number "
complete -f scrcpy -s d -l select-usb                                     -d "Use USB device"
complete -f scrcpy -s e -l select-tcpip                                   -d "Use TCP/IP device"
complete -f scrcpy -s f -l fullscreen                                     -d "Start in fullscreen"
complete -f scrcpy -s h -l help                                           -d "Print this help"
complete -f scrcpy -s n -l no-control                                     -d "Disable device control (mirror the device in read-only)"
complete -f scrcpy -s N -l no-playback                                    -d "Disable video and audio playback on the computer"
complete -f scrcpy -s S -l turn-screen-off                                -d "Turn the device screen off immediately"
complete -f scrcpy -s t -l show-touches                                   -d "Enable 'show touches' on start"
complete -f scrcpy -s v -l version                                        -d "Print the version of scrcpy"
complete -f scrcpy -s w -l stay-awake                                     -d "Keep the device on while scrcpy is running"
complete -F scrcpy -s r -l record                                      -r -d "Record screen to file"
complete -x scrcpy -s V -l verbosity                      -a "$verbosity" -d "Set the log level "
complete -f scrcpy      -l audio-encoder              -ra "$listencoders" -d "Use a specific MediaCodec audio encoder"
complete -f scrcpy      -l camera-id                   -ra "$listcameras" -d "Specify the device camera id to mirror"
complete -f scrcpy      -l camera-size              -ra "$listcamerasize" -d "Specify an explicit camera capture size"
complete -f scrcpy      -l display-id                 -ra "$listdisplays" -d "Specify the device display id to mirror"
complete -f scrcpy      -l video-encoder              -ra "$listencoders" -d "Use a specific MediaCodec video encoder "
complete -f scrcpy      -l audio-codec                 -ra "$audio_codec" -d "Select an audio codec"
complete -f scrcpy      -l camera-facing             -ra "$camera_facing" -d "Select the device camera by its facing direction"
complete -f scrcpy      -l record-format             -ra "$record_format" -d "Force recording format "
complete -f scrcpy      -l display-orientation -ra "$display_orientation" -d "Set the initial display orientation"
complete -f scrcpy      -l record-orientation   -ra "$record_orientation" -d "Set the record orientation"
complete -f scrcpy      -l capture-orientation -ra "$capture_orientation" -d "Set the capture video orientation"
complete -f scrcpy      -l render-driver             -ra "$render_driver" -d "Request SDL to use the given render driver"
complete -f scrcpy      -l shortcut-mod               -ra "$shortcut_mod" -d "Specify the modifiers to use for scrcpy shortcuts"
complete -x scrcpy      -l angle                                          -d "Rotate the video content by a custom angle"
complete -x scrcpy      -l audio-output-buffer                            -d "Configure the size of the SDL audio output buffer (in milliseconds)"
complete -x scrcpy      -l camera-ar                                      -d "Select the camera size by its aspect ratio (+/- 10%)"
complete -x scrcpy      -l camera-fps                                     -d "Specify the camera capture frame rate"
complete -x scrcpy      -l orientation                                    -d "Same as --display-orientation=value --record-orientation=value"
complete -x scrcpy      -l start-app                                      -d "Start an Android app, "
complete -x scrcpy      -l max-fps                                        -d "Limit the frame rate of screen capture"
complete -x scrcpy      -l crop                                           -d "Crop the device screen on the server"
complete -x scrcpy      -l time-limit                                     -d "Set the maximum mirroring time"
complete -x scrcpy      -l tunnel-host                                    -d "Set the IP address of the adb tunnel to reach the scrcpy server "
complete -x scrcpy      -l tunnel-port                                    -d "Set the TCP port of the adb tunnel to reach the scrcpy server "
complete -x scrcpy      -l v4l2-buffer                                    -d "Add a buffering delay before pushing frames "
complete -x scrcpy      -l video-buffer                                   -d "Add a buffering delay before displaying video frames"
complete -x scrcpy      -l video-codec                                    -d "Select a video codec "
complete -x scrcpy      -l window-title                                   -d "Set a custom window title"
complete -x scrcpy      -l window-x                                       -d "Set the initial window horizontal position"
complete -x scrcpy      -l window-y                                       -d "Set the initial window vertical position"
complete -x scrcpy      -l window-width                                   -d "Set the initial window width"
complete -x scrcpy      -l window-height                                  -d "Set the initial window height"
complete -x scrcpy      -l screen-off-timeout                             -d "Set the screen off timeout while scrcpy is running "
complete -F scrcpy      -l video-source                                -r -d "Select the video source (display or camera)"

complete -f scrcpy -l always-on-top            -d "Make scrcpy window always on top"
complete -f scrcpy -l audio-bit-rate           -d "Encode the audio at the given bit rate"
complete -f scrcpy -l audio-buffer             -d "Configure the audio buffering delay"
complete -f scrcpy -l audio-codec-options      -d "Set a list of comma-separated options for the device audio encoder"
complete -f scrcpy -l audio-dup                -d "also playing the audio on the device"
complete -f scrcpy -l camera-high-speed        -d "Enable high-speed camera capture mode"
complete -f scrcpy -l disable-screensaver      -d "Disable screensaver while scrcpy is running"
complete -f scrcpy -l force-adb-forward        -d "Do not attempt to use 'adb reverse' to connect to the device"
complete -f scrcpy -l kill-adb-on-close        -d "Kill adb when scrcpy terminates"
complete -f scrcpy -l legacy-paste             -d "Inject computer clipboard text as a sequence of key events"
complete -f scrcpy -l list-apps                -d "List Android apps installed on the device"
complete -f scrcpy -l list-cameras             -d "List device cameras"
complete -f scrcpy -l list-camera-sizes        -d "List the valid camera capture sizes"
complete -f scrcpy -l list-displays            -d "List device displays"
complete -f scrcpy -l list-encoders            -d "List video and audio encoders available on the device"
complete -f scrcpy -l new-display              -d "Create a new display with the specified resolution and density If not"
complete -f scrcpy -l no-audio                 -d "Disable audio forwarding"
complete -f scrcpy -l no-audio-playback        -d "Disable audio playback on the computer"
complete -f scrcpy -l no-cleanup               -d "don't remove the server binary from the device on exit"
complete -f scrcpy -l no-clipboard-autosync    -d "don't synchronize the clipboard brtween the device"
complete -f scrcpy -l no-downsize-on-error     -d "Don't retry with lower definition on MediaCodec error"
complete -f scrcpy -l no-key-repeat            -d "Do not forward repeated key events when a key is held down"
complete -f scrcpy -l no-mipmaps               -d "Don't generate mipmaps"
complete -f scrcpy -l no-mouse-hover           -d "Do not forward mouse hover (mouse motion without any clicks) events"
complete -f scrcpy -l v4l2-sink                -d "Output to v4l2loopback device"
complete -f scrcpy -l video-codec-options      -d "Set a list of comma-separated options for the device video encoder"
complete -f scrcpy -l window-borderless        -d "Disable window decorations (display borderless window)"
complete -f scrcpy -l no-power-on              -d "Do not power on the device on start"
complete -f scrcpy -l no-vd-destroy-content    -d "Disable virtual display 'destroy content on removal' flag"
complete -f scrcpy -l no-vd-system-decorations -d "Disable virtual display system decorations flag"
complete -f scrcpy -l no-video                 -d "Disable video forwarding"
complete -f scrcpy -l no-video-playback        -d "Disable video playback on the computer"
complete -f scrcpy -l no-window                -d "Disable scrcpy window"
complete -f scrcpy -l otg                      -d "Run in OTG mode"
complete -f scrcpy -l power-off-on-close       -d "Turn the device screen off when closing scrcpy"
complete -f scrcpy -l prefer-text              -d "Inject alpha characters and space as text events instead of key events"
complete -f scrcpy -l print-fps                -d "Start FPS counter"
complete -f scrcpy -l raw-key-events           -d "Inject key events for all input keys, and ignore text events"
complete -f scrcpy -l require-audio            -d "fail if audio capture fails on the device "
complete -f scrcpy -l tcpip                    -d "Configure and connect the device over TCP/IP"

complete -f scrcpy -l audio-source                             -d "Select the audio source"
complete -x scrcpy -l audio-source -a output                  -d "forwards the whole audio output, and disables playback on the device"
complete -x scrcpy -l audio-source -a playback                -d "captures the audio playback"
complete -x scrcpy -l audio-source -a mic                     -d "captures the microphone"
complete -x scrcpy -l audio-source -a mic-unprocessed         -d "captures the microphone unprocessed (raw) sound"
complete -x scrcpy -l audio-source -a mic-camcorder           -d "captures the microphone tuned for video recording"
complete -x scrcpy -l audio-source -a mic-voice-recognition   -d "captures the microphone tuned for voice recognition"
complete -x scrcpy -l audio-source -a mic-voice-communication -d "captures the microphone tuned for voice communications"
complete -x scrcpy -l audio-source -a voice-call              -d "captures voice call"
complete -x scrcpy -l audio-source -a voice-call-uplink       -d "captures voice call uplink only"
complete -x scrcpy -l audio-source -a voice-call-downlink     -d "captures voice call downlink only"
complete -x scrcpy -l audio-source -a voice-performance       -d "captures audio meant to be processed for live performance"

complete -f scrcpy -l display-ime-policy              -d "Set the policy for selecting where the IME should be displayed"
complete -x scrcpy -l display-ime-policy -a local    -d "the IME should appear on the local display"
complete -x scrcpy -l display-ime-policy -a fallback -d "the IME should appear on a fallback display (the default display)"
complete -x scrcpy -l display-ime-policy -a hide     -d "the IME should be hidden"

complete -f scrcpy -l gamepad              -d "Select how to send gamepad inputs to the device"
complete -x scrcpy -l gamepad -a disabled -d "does not send gamepad inputs to the device"
complete -x scrcpy -l gamepad -a uhid     -d "simulates physical HID gamepads using the Linux UHID kernel module on the device"
complete -x scrcpy -l gamepad -a aoa      -d "simulates physical gamepads using the AOAv2 protocol"

complete -f scrcpy -l keyboard              -d "Select how to send keyboard inputs to the device"
complete -x scrcpy -l keyboard -a disabled -d "does not send keyboard inputs to the device"
complete -x scrcpy -l keyboard -a sdk      -d "uses the Android system API to deliver keyboard events to applications"
complete -x scrcpy -l keyboard -a uhid     -d "simulates a physical HID keyboard using the Linux UHID kernel module on the device"
complete -x scrcpy -l keyboard -a aoa      -d "simulates a physical keyboard using the AOAv2 protocol"

complete -f scrcpy -l mouse              -d "Select how to send mouse inputs to the device"
complete -x scrcpy -l mouse -a disabled -d "does not send mouse inputs to the device"
complete -x scrcpy -l mouse -a sdk      -d "uses the Android system API to deliver mouse events to applications"
complete -x scrcpy -l mouse -a uhid     -d "simulates a physical HID mouse using the Linux UHID kernel module on the device"
complete -x scrcpy -l mouse -a aoa      -d "simulates a physical mouse using the AOAv2 protocol"

complete -f scrcpy -l pause-on-exit              -d "Configure pause on exit "
complete -x scrcpy -l pause-on-exit -a true     -d "always pause on exit"
complete -x scrcpy -l pause-on-exit -a false    -d "never pause on exit"
complete -x scrcpy -l pause-on-exit -a if-error -d "pause only if an error occurred"

complete -x scrcpy -l push-target -d "Set the target directory for pushing files to the device by drag & drop"
#TODO: directoy completions on target device

complete -f scrcpy -l mouse-bind -r -d "Configure bindings of secondary clicks"
#TODO: add completions for mouse-bind option
#   The argument must be one or two sequences (separated by ':') of exactly
#   4 characters, one for each secondary click (in order: right click,
#   middle click, 4th click, 5th click).
#   The first sequence defines the primary bindings, used when a mouse
#   button is pressed alone. The second sequence defines the secondary
#   bindings, used when a mouse button is pressed while the Shift key is
#   held.
#   If the second sequence of bindings is omitted, then it is the same as
#   the first one.
#   Each character must be one of the following:
#    '+': forward the click to the device
#    '-': ignore the click
#    'b': trigger shortcut BACK (or turn screen on if off)
#    'h': trigger shortcut HOME
#    's': trigger shortcut APP_SWITCH
#    'n': trigger shortcut "expand notification panel"
#   Default is 'bhsn:++++' for SDK mouse, and '++++:bhsn' for AOA and UHID.