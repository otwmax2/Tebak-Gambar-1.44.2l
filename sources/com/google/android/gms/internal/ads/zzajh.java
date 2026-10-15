package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzajh implements zzzu {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzaab f9365h = new zzaab() { // from class: com.google.android.gms.internal.ads.zzajd
        @Override // com.google.android.gms.internal.ads.zzaab
        public final /* synthetic */ zzzu[] a(Uri uri, Map map) {
            return zzaaa.a(this, uri, map);
        }

        @Override // com.google.android.gms.internal.ads.zzaab
        public final zzzu[] zza() {
            zzaab zzaabVar = zzajh.f9365h;
            return new zzzu[]{new zzajh()};
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzzx f9366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzabb f9367b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzajf f9370e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f9368c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f9369d = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9371f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f9372g = -1;

    @Override // com.google.android.gms.internal.ads.zzzu
    public final boolean a(zzzv zzzvVar) throws IOException {
        return zzajk.c(zzzvVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010e  */
    @Override // com.google.android.gms.internal.ads.zzzu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int e(com.google.android.gms.internal.ads.zzzv r19, com.google.android.gms.internal.ads.zzaau r20) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 407
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzajh.e(com.google.android.gms.internal.ads.zzzv, com.google.android.gms.internal.ads.zzaau):int");
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void g(zzzx zzzxVar) {
        this.f9366a = zzzxVar;
        this.f9367b = zzzxVar.q(0, 1);
        zzzxVar.f0();
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void h(long j10, long j11) {
        this.f9368c = j10 == 0 ? 0 : 4;
        zzajf zzajfVar = this.f9370e;
        if (zzajfVar != null) {
            zzajfVar.W(j11);
        }
    }
}
