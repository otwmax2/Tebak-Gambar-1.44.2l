package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzasd extends zzasm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f9840i;

    public zzasd(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11) {
        super(zzaqxVar, "H7DVVU5G/CyEmqoRDTRZzFOOZo/1i5OeCGYpAtE5NN4V5QTkqzRkQ5oAGN3vcrtV", "z+xFAlC1JJ/Cxy2NWKsDbM4NUy8C7neyeQZVK5Q+YiU=", zzamvVar, i10, 61);
        this.f9840i = zzaqxVar.s();
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        long jLongValue = ((Long) this.f9859f.invoke(null, this.f9855b.b(), Boolean.valueOf(this.f9840i))).longValue();
        synchronized (this.f9858e) {
            this.f9858e.s(jLongValue);
        }
    }
}
