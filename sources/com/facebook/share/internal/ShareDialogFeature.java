package com.facebook.share.internal;

import com.facebook.internal.DialogFeature;
import com.facebook.internal.NativeProtocol;
import java.util.Arrays;

/* JADX INFO: compiled from: ShareDialogFeature.kt */
/* JADX INFO: loaded from: classes.dex */
public enum ShareDialogFeature implements DialogFeature {
    SHARE_DIALOG(NativeProtocol.PROTOCOL_VERSION_20130618),
    PHOTOS(NativeProtocol.PROTOCOL_VERSION_20140204),
    VIDEO(NativeProtocol.PROTOCOL_VERSION_20141028),
    MULTIMEDIA(NativeProtocol.PROTOCOL_VERSION_20160327),
    HASHTAG(NativeProtocol.PROTOCOL_VERSION_20160327),
    LINK_SHARE_QUOTES(NativeProtocol.PROTOCOL_VERSION_20160327);

    private final int minVersion;

    ShareDialogFeature(int i10) {
        this.minVersion = i10;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static ShareDialogFeature[] valuesCustom() {
        ShareDialogFeature[] shareDialogFeatureArrValuesCustom = values();
        return (ShareDialogFeature[]) Arrays.copyOf(shareDialogFeatureArrValuesCustom, shareDialogFeatureArrValuesCustom.length);
    }

    @Override // com.facebook.internal.DialogFeature
    public String getAction() {
        return NativeProtocol.ACTION_FEED_DIALOG;
    }

    @Override // com.facebook.internal.DialogFeature
    public int getMinVersion() {
        return this.minVersion;
    }
}
