#
# Get Those G Apps

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/google/killrom/overlay/dictionaries

#apps
PRODUCT_COPY_FILES += \
    vendor/google/killrom/system/app/Calendar.apk:$(PRODUCT_OUT)/system/app/Calendar.apk \
    vendor/google/killrom/system/app/CalendarProvider.apk:$(PRODUCT_OUT)/system/app/CalendarProvider.apk \
    vendor/google/killrom/system/app/ChromeBookmarksSyncAdapter.apk:$(PRODUCT_OUT)/system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/google/killrom/system/app/EmailGoogle.apk:$(PRODUCT_OUT)/system/app/EmailGoogle.apk \
    vendor/google/killrom/system/app/Exchange2Google.apk:$(PRODUCT_OUT)/system/app/Exchange2Google.apk \
    vendor/google/killrom/system/app/FaceLock.apk:$(PRODUCT_OUT)/system/app/FaceLock.apk \
    vendor/google/killrom/system/app/GenieWidget.apk:$(PRODUCT_OUT)/system/app/GenieWidget.apk \
    vendor/google/killrom/system/app/Gmail.apk:$(PRODUCT_OUT)/system/app/Gmail.apk \
    vendor/google/killrom/system/app/GmsCore.apk:$(PRODUCT_OUT)/system/app/GmsCore.apk \
    vendor/google/killrom/system/app/GoogleBackupTransport.apk:$(PRODUCT_OUT)/system/app/GoogleBackupTransport.apk \
    vendor/google/killrom/system/app/GoogleCalendarSyncAdapter.apk:$(PRODUCT_OUT)/system/app/GoogleCalendarSyncAdapter.apk \
    vendor/google/killrom/system/app/GoogleContactsSyncAdapter.apk:$(PRODUCT_OUT)/system/app/GoogleContactsSyncAdapter.apk \
    vendor/google/killrom/system/app/GoogleEars.apk:$(PRODUCT_OUT)/system/app/GoogleEars.apk \
    vendor/google/killrom/system/app/GoogleFeedback.apk:$(PRODUCT_OUT)/system/app/GoogleFeedback.apk \
    vendor/google/killrom/system/app/GoogleLoginService.apk:$(PRODUCT_OUT)/system/app/GoogleLoginService.apk \
    vendor/google/killrom/system/app/GooglePartnerSetup.apk:$(PRODUCT_OUT)/system/app/GooglePartnerSetup.apk \
    vendor/google/killrom/system/app/GoogleServicesFramework.apk:$(PRODUCT_OUT)/system/app/GoogleServicesFramework.apk \
    vendor/google/killrom/system/app/GoogleTTS.apk:$(PRODUCT_OUT)/system/app/GoogleTTS.apk \
    vendor/google/killrom/system/app/LatinImeDictionaryPack.apk:$(PRODUCT_OUT)/system/app/LatinImeDictionaryPack.apk \
    vendor/google/killrom/system/app/Maps.apk:$(PRODUCT_OUT)/system/app/Maps.apk \
    vendor/google/killrom/system/app/MediaUploader.apk:$(PRODUCT_OUT)/system/app/MediaUploader.apk \
    vendor/google/killrom/system/app/Music2.apk:$(PRODUCT_OUT)/system/app/Music2.apk \
    vendor/google/killrom/system/app/NetworkLocation.apk:$(PRODUCT_OUT)/system/app/NetworkLocation.apk \
    vendor/google/killrom/system/app/OneTimeInitializer.apk:$(PRODUCT_OUT)/system/app/OneTimeInitializer.apk \
    vendor/google/killrom/system/app/Phonesky.apk:$(PRODUCT_OUT)/system/app/Phonesky.apk \
    vendor/google/killrom/system/app/QuickSearchBox.apk:$(PRODUCT_OUT)/system/app/QuickSearchBox.apk \
    vendor/google/killrom/system/app/SetupWizard.apk:$(PRODUCT_OUT)/system/app/SetupWizard.apk \
    vendor/google/killrom/system/app/StreetView.apk:$(PRODUCT_OUT)/system/app/StreetView.apk \
    vendor/google/killrom/system/app/Talk.apk:$(PRODUCT_OUT)/system/app/Talk.apk \
    vendor/google/killrom/system/app/VoiceSearchStub.apk:$(PRODUCT_OUT)/system/app/VoiceSearchStub.apk

ifneq ($(filter killr_mako killrom_d2vzw,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/google/killrom/system/app/mako/GalleryGoogle.apk:$(PRODUCT_OUT)/system/app/GalleryGoogle.apk \
    vendor/google/killrom/system/app/OccamQuickOffice.apk:$(PRODUCT_OUT)/system/app/OccamQuickOffice.apk
endif

ifneq ($(filter killrom_maserati killrom_solana killrom_spyder killrom_targa killrom_umts_spyder,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/google/killrom/xoom/app/GalleryGoogle.apk:$(PRODUCT_OUT)/system/app/GalleryGoogle.apk
endif

ifeq ($(filter killrom_d2vzw killrom_maserati killrom_solana killrom_spyder killrom_targa killrom_umts_spyder,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/google/killrom/system/app/Wallet.apk:$(PRODUCT_OUT)/system/app/Wallet.apk
endif

#permissions
PRODUCT_COPY_FILES += \
    vendor/google/killrom/system/etc/permissions/com.google.android.maps.xml:$(PRODUCT_OUT)/system/etc/permissions/com.google.android.maps.xml \
    vendor/google/killrom/system/etc/permissions/com.google.android.media.effects.xml:$(PRODUCT_OUT)/system/etc/permissions/com.google.android.media.effects.xml \
    vendor/google/killrom/system/etc/permissions/com.google.widevine.software.drm.xml:$(PRODUCT_OUT)/system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/google/killrom/system/etc/permissions/features.xml:$(PRODUCT_OUT)/system/etc/permissions/features.xml \
    vendor/google/killrom/system/etc/preferred-apps/google.xml:$(PRODUCT_OUT)/system/etc/preferred-apps/google.xml

#framework
PRODUCT_COPY_FILES += \
    vendor/google/killrom/system/framework/com.google.android.maps.jar:$(PRODUCT_OUT)/system/framework/com.google.android.maps.jar \
    vendor/google/killrom/system/framework/com.google.android.media.effects.jar:$(PRODUCT_OUT)/system/framework/com.google.android.media.effects.jar \
    vendor/google/killrom/system/framework/com.google.widevine.software.drm.jar:$(PRODUCT_OUT)/system/framework/com.google.widevine.software.drm.jar

#libs
PRODUCT_COPY_FILES += \
    vendor/google/killrom/system/lib/libfacelock_jni.so:$(PRODUCT_OUT)/system/lib/libfacelock_jni.so \
    vendor/google/killrom/system/lib/libfilterpack_facedetect.so:$(PRODUCT_OUT)/system/lib/libfilterpack_facedetect.so \
    vendor/google/killrom/system/lib/libfrsdk.so:$(PRODUCT_OUT)/system/lib/libfrsdk.so \
    vendor/google/killrom/system/lib/libgcomm_jni.so:$(PRODUCT_OUT)/system/lib/libgcomm_jni.so \
    vendor/google/killrom/system/lib/libgoogle_recognizer_jni.so:$(PRODUCT_OUT)/system/lib/libgoogle_recognizer_jni.so \
    vendor/google/killrom/system/lib/libgoogle_recognizer_jni_l.so:$(PRODUCT_OUT)/system/lib/libgoogle_recognizer_jni_l.so \
    vendor/google/killrom/system/lib/libgoggles_clientvision.so:$(PRODUCT_OUT)/system/lib/libgoggles_clientvision.so \
    vendor/google/killrom/system/lib/libgtalk_jni.so:$(PRODUCT_OUT)/system/lib/libgtalk_jni.so \
    vendor/google/killrom/system/lib/libgtalk_stabilize.so:$(PRODUCT_OUT)/system/lib/libgtalk_stabilize.so \
    vendor/google/killrom/system/lib/libjni_latinime.so:$(PRODUCT_OUT)/system/lib/libjni_latinime.so \
    vendor/google/killrom/system/lib/liblightcycle.so:$(PRODUCT_OUT)/system/lib/liblightcycle.so \
    vendor/google/killrom/system/lib/libpatts_engine_jni_api.so:$(PRODUCT_OUT)/system/lib/libpatts_engine_jni_api.so \
    vendor/google/killrom/system/lib/libspeexwrapper.so:$(PRODUCT_OUT)/system/lib/libspeexwrapper.so \
    vendor/google/killrom/system/lib/libvorbisencoder.so:$(PRODUCT_OUT)/system/lib/libvorbisencoder.so \
    vendor/google/killrom/system/lib/libpicowrapper.so:$(PRODUCT_OUT)/system/lib/libpicowrapper.so \
    vendor/google/killrom/system/lib/libvoicesearch.so:$(PRODUCT_OUT)/system/lib/libvoicesearch.so

ifeq ($(TARGET_PRODUCT),killr_mako)
PRODUCT_COPY_FILES += \
    vendor/google/killrom/system/lib/libjni_filtershow_filters.so:$(PRODUCT_OUT)/system/lib/libjni_filtershow_filters.so \
    vendor/google/killrom/system/lib/libjni_mosaic.so:$(PRODUCT_OUT)/system/lib/libjni_mosaic.so \
    vendor/google/killrom/system/lib/libcamera_metadata.so:$(PRODUCT_OUT)/system/lib/libcamera_metadata.so \
    vendor/google/killrom/system/lib/libmmcamera_hdr_lib.so:$(PRODUCT_OUT)/system/lib/libmmcamera_hdr_lib.so \
    vendor/google/killrom/system/lib/libmmcamera_image_stab.so:$(PRODUCT_OUT)/system/lib/libmmcamera_image_stab.so
endif

ifneq ($(filter full_maguro full_toro,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/google/killrom/system/lib/libjni_filtershow_filters.so:$(PRODUCT_OUT)/system/lib/libjni_filtershow_filters.so \
    vendor/google/killrom/system/lib/libjni_mosaic.so:$(PRODUCT_OUT)/system/lib/libjni_mosaic.so
endif

#usr
PRODUCT_COPY_FILES += \
    vendor/google/killrom/system/usr/srec/en-US/acoustic_model:$(PRODUCT_OUT)/system/usr/srec/en-US/acoustic_model \
    vendor/google/killrom/system/usr/srec/en-US/c_fst:$(PRODUCT_OUT)/system/usr/srec/en-US/c_fst \
    vendor/google/killrom/system/usr/srec/en-US/clg:$(PRODUCT_OUT)/system/usr/srec/en-US/clg \
    vendor/google/killrom/system/usr/srec/en-US/compile_grammar.config:$(PRODUCT_OUT)/system/usr/srec/en-US/compile_grammar.config \
    vendor/google/killrom/system/usr/srec/en-US/contacts.abnf:$(PRODUCT_OUT)/system/usr/srec/en-US/contacts.abnf \
    vendor/google/killrom/system/usr/srec/en-US/dict:$(PRODUCT_OUT)/system/usr/srec/en-US/dict \
    vendor/google/killrom/system/usr/srec/en-US/dictation.config:$(PRODUCT_OUT)/system/usr/srec/en-US/dictation.config \
    vendor/google/killrom/system/usr/srec/en-US/embed_phone_nn_model:$(PRODUCT_OUT)/system/usr/srec/en-US/embed_phone_nn_model \
    vendor/google/killrom/system/usr/srec/en-US/embed_phone_nn_state_sym:$(PRODUCT_OUT)/system/usr/srec/en-US/embed_phone_nn_state_sym \
    vendor/google/killrom/system/usr/srec/en-US/endpointer_dictation.config:$(PRODUCT_OUT)/system/usr/srec/en-US/endpointer_dictation.config \
    vendor/google/killrom/system/usr/srec/en-US/endpointer_voicesearch.config:$(PRODUCT_OUT)/system/usr/srec/en-US/endpointer_voicesearch.config \
    vendor/google/killrom/system/usr/srec/en-US/ep_acoustic_model:$(PRODUCT_OUT)/system/usr/srec/en-US/ep_acoustic_model \
    vendor/google/killrom/system/usr/srec/en-US/g2p_fst:$(PRODUCT_OUT)/system/usr/srec/en-US/g2p_fst \
    vendor/google/killrom/system/usr/srec/en-US/google_hotword.config:$(PRODUCT_OUT)/system/usr/srec/en-US/google_hotword.config \
    vendor/google/killrom/system/usr/srec/en-US/google_hotword_clg:$(PRODUCT_OUT)/system/usr/srec/en-US/google_hotword_clg \
    vendor/google/killrom/system/usr/srec/en-US/google_hotword_logistic:$(PRODUCT_OUT)/system/usr/srec/en-US/google_hotword_logistic \
    vendor/google/killrom/system/usr/srec/en-US/grammar.config:$(PRODUCT_OUT)/system/usr/srec/en-US/grammar.config \
    vendor/google/killrom/system/usr/srec/en-US/hmmsyms:$(PRODUCT_OUT)/system/usr/srec/en-US/hmmsyms \
    vendor/google/killrom/system/usr/srec/en-US/hotword_symbols:$(PRODUCT_OUT)/system/usr/srec/en-US/hotword_symbols \
    vendor/google/killrom/system/usr/srec/en-US/lintrans_model:$(PRODUCT_OUT)/system/usr/srec/en-US/lintrans_model \
    vendor/google/killrom/system/usr/srec/en-US/metadata:$(PRODUCT_OUT)/system/usr/srec/en-US/metadata \
    vendor/google/killrom/system/usr/srec/en-US/normalizer:$(PRODUCT_OUT)/system/usr/srec/en-US/normalizer \
    vendor/google/killrom/system/usr/srec/en-US/norm_fst:$(PRODUCT_OUT)/system/usr/srec/en-US/norm_fst \
    vendor/google/killrom/system/usr/srec/en-US/offensive_word_normalizer:$(PRODUCT_OUT)/system/usr/srec/en-US/offensive_word_normalizer \
    vendor/google/killrom/system/usr/srec/en-US/phonelist:$(PRODUCT_OUT)/system/usr/srec/en-US/phonelist \
    vendor/google/killrom/system/usr/srec/en-US/rescoring_lm:$(PRODUCT_OUT)/system/usr/srec/en-US/rescoring_lm \
    vendor/google/killrom/system/usr/srec/en-US/symbols:$(PRODUCT_OUT)/system/usr/srec/en-US/symbols

#vendor
PRODUCT_COPY_FILES += \
    vendor/google/killrom/system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/left_eye-y0-yi45-p0-pi45-r0-ri20.lg_32/full_model.bin:$(PRODUCT_OUT)/system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/left_eye-y0-yi45-p0-pi45-r0-ri20.lg_32/full_model.bin \
    vendor/google/killrom/system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/nose_base-y0-yi45-p0-pi45-r0-ri20.lg_32/full_model.bin:$(PRODUCT_OUT)/system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/nose_base-y0-yi45-p0-pi45-r0-ri20.lg_32/full_model.bin \
    vendor/google/killrom/system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/right_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-2/full_model.bin:$(PRODUCT_OUT)/system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/right_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-2/full_model.bin \
    vendor/google/killrom/system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-r0-ri30.4a-v24/full_model.bin:$(PRODUCT_OUT)/system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-r0-ri30.4a-v24/full_model.bin \
    vendor/google/killrom/system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rn30-ri30.5-v24/full_model.bin:$(PRODUCT_OUT)/system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rn30-ri30.5-v24/full_model.bin \
    vendor/google/killrom/system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rp30-ri30.5-v24/full_model.bin:$(PRODUCT_OUT)/system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rp30-ri30.5-v24/full_model.bin
