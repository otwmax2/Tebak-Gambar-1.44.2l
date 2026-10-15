package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzasb extends zzasm {
    public zzasb(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11) {
        super(zzaqxVar, "bXRNTWf8pTJMV81ptuODaUT8St7h/kbg9zRX7vuGaRSfPUSYi9ha6NvG/sFrxBFp", "+jZivRPpfg3QAF/dHEFIfvkp2rKh7j4ILi27Wnexdh0=", zzamvVar, i10, 73);
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        try {
            int i10 = 1;
            boolean zBooleanValue = ((Boolean) this.f9859f.invoke(null, this.f9855b.b())).booleanValue();
            zzamv zzamvVar = this.f9858e;
            if (true == zBooleanValue) {
                i10 = 2;
            }
            zzamvVar.Y(i10);
        } catch (InvocationTargetException unused) {
            this.f9858e.Y(3);
        }
    }
}
