[The Orca Project](drewgaren.com)
====================================


Download the source
--------------

Please read the [AOSP building instructions](http://source.android.com/source/index.html) before proceeding.

Initialize

    repo init -u git://github.com/ORCAOSP/platform_manifest.git -b jb4.2.2

Run the following to sync the source

    repo sync -j1

***

Download the kernel source
--------------------------

Integrated kernel building is now a required part of compiling ORCA for all supported devices!

From the root of your source tree, run the following script to grab the kernel sources required

    . ./platform_manifest/manual_add_kernel_manifest.sh

Then run another `repo sync`


**Advanced users:**
Since the kernel trees are fairly large, you may want to sync only specific kernel trees for devices you build for, take a look at the file `.repo/local_manifests/kernel_manifest.xml`. You can edit this file to suite your needs.


***

Building
--------

After the sync is finished, please read the [instructions from the Android site](http://s.android.com/source/building.html) on how to build.

    . build/envsetup.sh
    brunch


You can also build (and see how long it took) for specific devices like this:

    . build/envsetup.sh
    time brunch orca_mako-userdebug

Remember to `make clobber` every now and then!
