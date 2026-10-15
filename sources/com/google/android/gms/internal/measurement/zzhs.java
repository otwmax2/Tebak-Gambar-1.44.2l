package com.google.android.gms.internal.measurement;

import android.util.Log;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
final class zzhs extends zzhy {
    zzhs(zzhv zzhvVar, String str, Boolean bool, boolean z10) {
        super(zzhvVar, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzhy
    @Nullable
    final /* bridge */ /* synthetic */ Object a(Object obj) {
        if (zzgz.f23507c.matcher(obj).matches()) {
            return Boolean.TRUE;
        }
        if (zzgz.f23508d.matcher(obj).matches()) {
            return Boolean.FALSE;
        }
        Log.e("PhenotypeFlag", "Invalid boolean value for " + super.c() + ": " + ((String) obj));
        return null;
    }
}
