package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbwn implements zzatf {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f11450o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Object f11451p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f11452q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f11453r;

    public zzbwn(Context context, String str) {
        this.f11450o = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f11452q = str;
        this.f11453r = false;
        this.f11451p = new Object();
    }

    @Override // com.google.android.gms.internal.ads.zzatf
    public final void H0(zzate zzateVar) {
        b(zzateVar.f9886j);
    }

    public final String a() {
        return this.f11452q;
    }

    public final void b(boolean z10) {
        if (com.google.android.gms.ads.internal.zzt.p().z(this.f11450o)) {
            synchronized (this.f11451p) {
                if (this.f11453r == z10) {
                    return;
                }
                this.f11453r = z10;
                if (TextUtils.isEmpty(this.f11452q)) {
                    return;
                }
                if (this.f11453r) {
                    com.google.android.gms.ads.internal.zzt.p().m(this.f11450o, this.f11452q);
                } else {
                    com.google.android.gms.ads.internal.zzt.p().n(this.f11450o, this.f11452q);
                }
            }
        }
    }
}
