package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzarw extends zzasm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzaqp f9832i;

    public zzarw(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11, zzaqp zzaqpVar) {
        super(zzaqxVar, "E/THkPkgF+0BLHsbSftuamH1/Y9ilZlsoBNC4vnGArx/OuP8nuKuPE26WAshquqV", "JjKXzosN///CnCEigOfT12TbYoIG/MWslFVGA2m/k1w=", zzamvVar, i10, 94);
        this.f9832i = zzaqpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        int iIntValue = ((Integer) this.f9859f.invoke(null, this.f9832i.a())).intValue();
        synchronized (this.f9858e) {
            this.f9858e.W(zzanj.a(iIntValue));
        }
    }
}
