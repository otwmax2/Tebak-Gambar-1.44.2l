package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdc {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzdc f14338e = new zzdc(-1, -1, -1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f14339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f14340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f14342d;

    public zzdc(int i10, int i11, int i12) {
        this.f14339a = i10;
        this.f14340b = i11;
        this.f14341c = i12;
        this.f14342d = zzew.w(i12) ? zzew.Z(i12, i11) : -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdc)) {
            return false;
        }
        zzdc zzdcVar = (zzdc) obj;
        return this.f14339a == zzdcVar.f14339a && this.f14340b == zzdcVar.f14340b && this.f14341c == zzdcVar.f14341c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f14339a), Integer.valueOf(this.f14340b), Integer.valueOf(this.f14341c)});
    }

    public final String toString() {
        return "AudioFormat[sampleRate=" + this.f14339a + ", channelCount=" + this.f14340b + ", encoding=" + this.f14341c + "]";
    }
}
