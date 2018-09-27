system=$(uname -s | tr 'DL' 'dl')-$(uname -m)
gcc_version=4.6
if [[ ${PLATFORM} == "arm" ]] ; then
    toolchain=arm-linux-androideabi-$gcc_version
    export host_system=arm-linux-androideabi
fi
if [[ ${PLATFORM} == "x86" ]] ; then
    toolchain=x86-$gcc_version
    export host_system=i686-linux-android
fi
platform=android-14
PYTHONPATH=/opt/ros/indigo/lib/python2.7/dist-packages:$PYTHONPATH
# Enable this value for debug build
CMAKE_BUILD_TYPE=Debug
# Enable this if you need to use pluginlib in Android.
# The plugins will be statically linked
use_pluginlib=1

