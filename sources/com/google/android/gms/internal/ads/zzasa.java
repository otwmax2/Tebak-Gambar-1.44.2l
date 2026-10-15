package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzasa extends zzasm {
    public zzasa(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11) {
        super(zzaqxVar, "1j4REQrMq1PMMKcExjoDOWyg20MvDt1CpdYWmGJKkBHqeSdI3MLMTN450gavv1ax", "+CZi37grxFhhVcffnGl0l4+1UklQkPiKUfCgqjs0HzY=", zzamvVar, i10, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        zzaqd zzaqdVar = new zzaqd((String) this.f9859f.invoke(null, this.f9855b.b(), Boolean.valueOf(((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10315o2)).booleanValue())));
        synchronized (this.f9858e) {
            this.f9858e.i0(zzaqdVar.f9714b);
            this.f9858e.q(zzaqdVar.f9715c);
        }
    }
}
