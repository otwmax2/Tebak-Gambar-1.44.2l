package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzrh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f20557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f20558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f20559c;

    public zzrh(String str, boolean z10, boolean z11) {
        this.f20557a = str;
        this.f20558b = z10;
        this.f20559c = z11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == zzrh.class) {
            zzrh zzrhVar = (zzrh) obj;
            if (TextUtils.equals(this.f20557a, zzrhVar.f20557a) && this.f20558b == zzrhVar.f20558b && this.f20559c == zzrhVar.f20559c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f20557a.hashCode() + 31;
        return (((iHashCode * 31) + (true != this.f20558b ? 1237 : 1231)) * 31) + (true == this.f20559c ? 1231 : 1237);
    }
}
