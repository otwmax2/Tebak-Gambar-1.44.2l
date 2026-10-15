package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzasj extends zzasm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final View f9846i;

    public zzasj(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11, View view) {
        super(zzaqxVar, "5jsrpffMyqRCbSKE996yDJ4IoI5qc646KRWjOLMSbw18UnvhA6jyNpaXxK5q8Rhj", "83UKU58KVDl1XjXA/sXoYfPwdBBAdREF/fSwIBsg4EE=", zzamvVar, i10, 57);
        this.f9846i = view;
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (this.f9846i != null) {
            Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.V2);
            Boolean bool2 = (Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10289l9);
            zzarc zzarcVar = new zzarc((String) this.f9859f.invoke(null, this.f9846i, this.f9855b.b().getResources().getDisplayMetrics(), bool, bool2));
            zzanq zzanqVarI = zzanr.I();
            zzanqVarI.p(zzarcVar.f9790b.longValue());
            zzanqVarI.r(zzarcVar.f9791c.longValue());
            zzanqVarI.s(zzarcVar.f9792d.longValue());
            if (bool2.booleanValue()) {
                zzanqVarI.q(zzarcVar.f9794f.longValue());
            }
            if (bool.booleanValue()) {
                zzanqVarI.o(zzarcVar.f9793e.longValue());
            }
            this.f9858e.O((zzanr) zzanqVarI.k());
        }
    }
}
