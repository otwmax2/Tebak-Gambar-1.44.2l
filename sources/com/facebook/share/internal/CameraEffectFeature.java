package com.facebook.share.internal;

import com.facebook.internal.DialogFeature;
import com.facebook.internal.NativeProtocol;
import java.util.Arrays;

/* JADX INFO: compiled from: CameraEffectFeature.kt */
/* JADX INFO: loaded from: classes.dex */
public enum CameraEffectFeature implements DialogFeature {
    SHARE_CAMERA_EFFECT(NativeProtocol.PROTOCOL_VERSION_20170417);

    private final int minVersion;

    CameraEffectFeature(int i10) {
        this.minVersion = i10;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static CameraEffectFeature[] valuesCustom() {
        CameraEffectFeature[] cameraEffectFeatureArrValuesCustom = values();
        return (CameraEffectFeature[]) Arrays.copyOf(cameraEffectFeatureArrValuesCustom, cameraEffectFeatureArrValuesCustom.length);
    }

    @Override // com.facebook.internal.DialogFeature
    public String getAction() {
        return NativeProtocol.ACTION_CAMERA_EFFECT;
    }

    @Override // com.facebook.internal.DialogFeature
    public int getMinVersion() {
        return this.minVersion;
    }
}
