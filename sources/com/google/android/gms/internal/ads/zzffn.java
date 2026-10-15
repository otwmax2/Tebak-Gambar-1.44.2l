package com.google.android.gms.internal.ads;

import com.facebook.internal.AnalyticsEvents;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzffn {
    HTML("html"),
    NATIVE(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE),
    JAVASCRIPT("javascript");


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f18103o;

    zzffn(String str) {
        this.f18103o = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f18103o;
    }
}
