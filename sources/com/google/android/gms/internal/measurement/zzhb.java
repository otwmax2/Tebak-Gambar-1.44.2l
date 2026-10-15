package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
final class zzhb extends zzhw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f23519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzif f23520b;

    zzhb(Context context, @Nullable zzif zzifVar) {
        Objects.requireNonNull(context, "Null context");
        this.f23519a = context;
        this.f23520b = zzifVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzhw
    final Context a() {
        return this.f23519a;
    }

    @Override // com.google.android.gms.internal.measurement.zzhw
    @Nullable
    final zzif b() {
        return this.f23520b;
    }

    public final boolean equals(Object obj) {
        zzif zzifVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzhw) {
            zzhw zzhwVar = (zzhw) obj;
            if (this.f23519a.equals(zzhwVar.a()) && ((zzifVar = this.f23520b) != null ? zzifVar.equals(zzhwVar.b()) : zzhwVar.b() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f23519a.hashCode() ^ 1000003) * 1000003;
        zzif zzifVar = this.f23520b;
        return iHashCode ^ (zzifVar == null ? 0 : zzifVar.hashCode());
    }

    public final String toString() {
        return "FlagsContext{context=" + this.f23519a.toString() + ", hermeticFileOverrides=" + String.valueOf(this.f23520b) + "}";
    }
}
