package com.google.android.gms.internal.ads_identifier;

import android.os.Parcel;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-identifier@@17.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ClassLoader f21217a = zzc.class.getClassLoader();

    private zzc() {
    }

    public static void a(Parcel parcel, boolean z10) {
        parcel.writeInt(1);
    }

    public static boolean b(Parcel parcel) {
        return parcel.readInt() != 0;
    }
}
