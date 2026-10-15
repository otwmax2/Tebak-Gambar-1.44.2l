package com.google.android.gms.internal.measurement;

import java.io.Serializable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzid implements Serializable {
    zzid() {
    }

    public static zzid c() {
        return zzib.f23565o;
    }

    public static zzid d(Object obj) {
        return new zzie(obj);
    }

    public abstract Object a();

    public abstract boolean b();
}
