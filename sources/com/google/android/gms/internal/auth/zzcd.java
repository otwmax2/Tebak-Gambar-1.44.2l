package com.google.android.gms.internal.auth;

import android.content.Context;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
final class zzcd extends zzcy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f21405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdg<zzde<zzco>> f21406b;

    @Override // com.google.android.gms.internal.auth.zzcy
    final Context a() {
        return this.f21405a;
    }

    @Override // com.google.android.gms.internal.auth.zzcy
    @Nullable
    final zzdg<zzde<zzco>> b() {
        return this.f21406b;
    }

    public final boolean equals(Object obj) {
        zzdg<zzde<zzco>> zzdgVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzcy) {
            zzcy zzcyVar = (zzcy) obj;
            if (this.f21405a.equals(zzcyVar.a()) && ((zzdgVar = this.f21406b) != null ? zzdgVar.equals(zzcyVar.b()) : zzcyVar.b() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f21405a.hashCode() ^ 1000003) * 1000003;
        zzdg<zzde<zzco>> zzdgVar = this.f21406b;
        return iHashCode ^ (zzdgVar == null ? 0 : zzdgVar.hashCode());
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f21405a);
        String strValueOf2 = String.valueOf(this.f21406b);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 46 + strValueOf2.length());
        sb.append("FlagsContext{context=");
        sb.append(strValueOf);
        sb.append(", hermeticFileOverrides=");
        sb.append(strValueOf2);
        sb.append("}");
        return sb.toString();
    }
}
