package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzakg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f9422a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f9423b;

    public zzakg(String str, String str2) {
        this.f9422a = str;
        this.f9423b = str2;
    }

    public final String a() {
        return this.f9422a;
    }

    public final String b() {
        return this.f9423b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzakg.class == obj.getClass()) {
            zzakg zzakgVar = (zzakg) obj;
            if (TextUtils.equals(this.f9422a, zzakgVar.f9422a) && TextUtils.equals(this.f9423b, zzakgVar.f9423b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f9422a.hashCode() * 31) + this.f9423b.hashCode();
    }

    public final String toString() {
        return "Header[name=" + this.f9422a + ",value=" + this.f9423b + "]";
    }
}
