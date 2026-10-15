package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzaab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzaab f8287a = new zzaab() { // from class: com.google.android.gms.internal.ads.zzzz
        @Override // com.google.android.gms.internal.ads.zzaab
        public final /* synthetic */ zzzu[] a(Uri uri, Map map) {
            return zzaaa.a(this, uri, map);
        }

        @Override // com.google.android.gms.internal.ads.zzaab
        public final zzzu[] zza() {
            int i10 = zzaaa.f8286a;
            return new zzzu[0];
        }
    };

    zzzu[] a(Uri uri, Map map);

    zzzu[] zza();
}
