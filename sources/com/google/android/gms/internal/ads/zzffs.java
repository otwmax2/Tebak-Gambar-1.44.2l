package com.google.android.gms.internal.ads;

import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.internal.AnalyticsEvents;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzffs {
    NATIVE(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE),
    JAVASCRIPT("javascript"),
    NONE(IntegrityManager.INTEGRITY_TYPE_NONE);


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f18139o;

    zzffs(String str) {
        this.f18139o = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f18139o;
    }
}
