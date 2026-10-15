package com.google.android.gms.internal.measurement;

import android.util.Log;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
final class zzhr extends zzhy {
    zzhr(zzhv zzhvVar, String str, Long l10, boolean z10) {
        super(zzhvVar, str, l10, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzhy
    @Nullable
    final /* bridge */ /* synthetic */ Object a(Object obj) {
        try {
            return Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException unused) {
            Log.e("PhenotypeFlag", "Invalid long value for " + super.c() + ": " + ((String) obj));
            return null;
        }
    }
}
