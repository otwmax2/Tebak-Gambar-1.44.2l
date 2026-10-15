package com.google.android.gms.internal.ads;

import android.os.IBinder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzflg extends zzflz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IBinder f18390a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f18392c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f18393d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f18394e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f18395f;

    /* synthetic */ zzflg(IBinder iBinder, boolean z10, String str, int i10, float f10, int i11, String str2, int i12, String str3, zzflf zzflfVar) {
        this.f18390a = iBinder;
        this.f18391b = str;
        this.f18392c = i10;
        this.f18393d = f10;
        this.f18394e = i12;
        this.f18395f = str3;
    }

    @Override // com.google.android.gms.internal.ads.zzflz
    public final float a() {
        return this.f18393d;
    }

    @Override // com.google.android.gms.internal.ads.zzflz
    public final int b() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzflz
    public final int c() {
        return this.f18392c;
    }

    @Override // com.google.android.gms.internal.ads.zzflz
    public final int d() {
        return this.f18394e;
    }

    @Override // com.google.android.gms.internal.ads.zzflz
    public final IBinder e() {
        return this.f18390a;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzflz) {
            zzflz zzflzVar = (zzflz) obj;
            if (this.f18390a.equals(zzflzVar.e())) {
                zzflzVar.i();
                String str2 = this.f18391b;
                if (str2 != null ? str2.equals(zzflzVar.g()) : zzflzVar.g() == null) {
                    if (this.f18392c == zzflzVar.c() && Float.floatToIntBits(this.f18393d) == Float.floatToIntBits(zzflzVar.a())) {
                        zzflzVar.b();
                        zzflzVar.h();
                        if (this.f18394e == zzflzVar.d() && ((str = this.f18395f) != null ? str.equals(zzflzVar.f()) : zzflzVar.f() == null)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzflz
    public final String f() {
        return this.f18395f;
    }

    @Override // com.google.android.gms.internal.ads.zzflz
    public final String g() {
        return this.f18391b;
    }

    @Override // com.google.android.gms.internal.ads.zzflz
    public final String h() {
        return null;
    }

    public final int hashCode() {
        int iHashCode = this.f18390a.hashCode() ^ 1000003;
        String str = this.f18391b;
        int iHashCode2 = ((((((((((iHashCode * 1000003) ^ 1237) * 1000003) ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f18392c) * 1000003) ^ Float.floatToIntBits(this.f18393d)) * 583896283) ^ this.f18394e) * 1000003;
        String str2 = this.f18395f;
        return iHashCode2 ^ (str2 != null ? str2.hashCode() : 0);
    }

    @Override // com.google.android.gms.internal.ads.zzflz
    public final boolean i() {
        return false;
    }

    public final String toString() {
        return "OverlayDisplayShowRequest{windowToken=" + this.f18390a.toString() + ", stableSessionToken=false, appId=" + this.f18391b + ", layoutGravity=" + this.f18392c + ", layoutVerticalMargin=" + this.f18393d + ", displayMode=0, sessionToken=null, windowWidthPx=" + this.f18394e + ", adFieldEnifd=" + this.f18395f + "}";
    }
}
