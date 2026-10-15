package com.google.android.gms.internal.measurement;

import java.io.Serializable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzij {
    public static zzif a(zzif zzifVar) {
        return ((zzifVar instanceof zzih) || (zzifVar instanceof zzig)) ? zzifVar : zzifVar instanceof Serializable ? new zzig(zzifVar) : new zzih(zzifVar);
    }

    public static zzif b(Object obj) {
        return new zzii(obj);
    }
}
