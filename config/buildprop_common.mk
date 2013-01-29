# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    windowsmgr.max_events_per_sec=280 \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=96m \
    dalvik.vm.heapsize=256m \
    dalvik.vm.dexopt-flags=m=y,v=n,o=v \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.lockprof.threshold=850 \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.verify-bytecode=false \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt \
    ro.media.enc.jpeg.quality=100 \
    debug.sf.hw=1 \
    debug.performance.tuning=1 \
    video.accelerate.hw=1 \
    ro.HOME_APP_ADJ=1 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    ro.media.enc.hprof.vid.fps=65 \
    ro.media.enc.jpeg.quality=100 \
    debug.composition.type=gpu \
    ro.telephony.call_ring.delay=500 \
    ro.lge.proximity.delay=25 \
    mot.proximity.delay=25
    ro.goo.developerid=drewgaren
    ro.goo.rom=Orca_nightly
    ro.goo.version=1
    
# Misc Files & init.d files
PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/orca/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/orca/prebuilt/common/etc/init.local.rc:root/init.xylon.rc \
    vendor/orca/prebuilt/common/bin/sysinit:system/bin/sysinit

# 01010101010101010010101010
PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/common/bin/zipalign:system/bin/zipalign \
    vendor/orca/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/orca/prebuilt/common/etc/init.d/00orca:system/etc/init.d/00orca \
    vendor/orca/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/orca/prebuilt/common/etc/init.d/01cherrybomb:system/etc/init.d/01cherrybomb \
    vendor/orca/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/orca/prebuilt/common/etc/init.d/02cleaning:system/etc/init.d/02cleaning \
    vendor/orca/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/orca/prebuilt/common/etc/init.d/88zipalign:system/etc/init.d/88zipalign \
    vendor/orca/prebuilt/common/etc/init.d/97battery:system/etc/init.d/97battery \
    vendor/orca/prebuilt/common/etc/init.d/98fruit:system/etc/init.d/98fruit \
    vendor/orca/prebuilt/common/etc/init.d/99Orca_Tweaks:system/etc/init.d/99Orca_Tweaks \

# Bring 'em battery drainer
PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/common/bin/seeder:system/bin/seeder \
    vendor/orca/prebuilt/common/etc/init.d/99rngd:system/etc/init.d/99rngd \
    vendor/orca/prebuilt/common/xbin/entro:system/xbin/entro \
    vendor/orca/prebuilt/common/xbin/rngd:system/xbin/rngd

# Google Proprietaries
PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/orca/prebuilt/common/lib/libgtalk_jni.so:system/lib/libgtalk_jni.so \
    vendor/orca/prebuilt/common/lib/libgtalk_stabilize.so:system/lib/libgtalk_stabilize.so \
    vendor/orca/prebuilt/common/lib/libjni_filtershow_filters.so:system/lib/libjni_filtershow_filters.so \
    vendor/orca/prebuilt/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/orca/prebuilt/common/lib/liblightcycle.so:system/lib/liblightcycle.so
