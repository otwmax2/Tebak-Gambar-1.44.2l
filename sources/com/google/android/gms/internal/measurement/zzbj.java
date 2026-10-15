package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbj extends zzaw {
    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap a(String str, zzg zzgVar, List list) {
        if (str == null || str.isEmpty() || !zzgVar.h(str)) {
            throw new IllegalArgumentException(String.format("Command not found: %s", str));
        }
        zzap zzapVarD = zzgVar.d(str);
        if (zzapVarD instanceof zzai) {
            return ((zzai) zzapVarD).a(zzgVar, list);
        }
        throw new IllegalArgumentException(String.format("Function %s is not defined", str));
    }
}
