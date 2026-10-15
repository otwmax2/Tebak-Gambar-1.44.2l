package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzars extends zzasm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzaqy f9826i;

    public zzars(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11, zzaqy zzaqyVar) {
        super(zzaqxVar, "WiBvNElQIWLcD1MAWzkQBcjrDQoEuYCN1R/XT/Sg3LhVQ2iulZRZfofRQLig8S+e", "bmivrcLZaHzijOhh62Orf3BoYYHHdZV06MDdRRTWkIM=", zzamvVar, i10, 85);
        this.f9826i = zzaqyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        long[] jArr = (long[]) this.f9859f.invoke(null, Long.valueOf(this.f9826i.d()), Long.valueOf(this.f9826i.h()), Long.valueOf(this.f9826i.b()), Long.valueOf(this.f9826i.f()));
        synchronized (this.f9858e) {
            this.f9858e.v0(jArr[0]);
            this.f9858e.u0(jArr[1]);
        }
    }
}
