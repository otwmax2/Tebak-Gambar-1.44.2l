package com.google.android.gms.internal.ads;

import java.io.Serializable;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzfnq implements Serializable {
    zzfnq() {
    }

    public static zzfnq c() {
        return zzfmz.f18457o;
    }

    public static zzfnq d(@CheckForNull Object obj) {
        return obj == null ? zzfmz.f18457o : new zzfnz(obj);
    }

    public abstract zzfnq a(zzfnj zzfnjVar);

    public abstract Object b(Object obj);
}
