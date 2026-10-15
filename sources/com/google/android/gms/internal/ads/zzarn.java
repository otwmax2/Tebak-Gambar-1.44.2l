package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzarn extends zzasm {
    public zzarn(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11) {
        super(zzaqxVar, "pzDMLx6PDOtUoiq4sHYJQM6a/7OSGXuSt3rWDXG0BK02rgL9BLEjiNa6eKy3zt3D", "O5il9ZZjBEgIiHjallNs+C68w5c7XQAr0WIqU8TcTvI=", zzamvVar, i10, 5);
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f9858e.m0(-1L);
        this.f9858e.k0(-1L);
        int[] iArr = (int[]) this.f9859f.invoke(null, this.f9855b.b());
        synchronized (this.f9858e) {
            this.f9858e.m0(iArr[0]);
            this.f9858e.k0(iArr[1]);
            int i10 = iArr[2];
            if (i10 != Integer.MIN_VALUE) {
                this.f9858e.j0(i10);
            }
        }
    }
}
