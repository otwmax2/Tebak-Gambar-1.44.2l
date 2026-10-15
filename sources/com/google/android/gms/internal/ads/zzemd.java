package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzemd implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfuu f16948b;

    public zzemd(Context context, zzfuu zzfuuVar) {
        this.f16947a = context;
        this.f16948b = zzfuuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 19;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f16948b.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzemc
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String strH;
                String strI;
                String strE;
                com.google.android.gms.ads.internal.zzt.r();
                zzaue zzaueVarE = com.google.android.gms.ads.internal.zzt.q().h().e();
                Bundle bundle = null;
                if (zzaueVarE != null && (!com.google.android.gms.ads.internal.zzt.q().h().Y() || !com.google.android.gms.ads.internal.zzt.q().h().J())) {
                    if (zzaueVarE.h()) {
                        zzaueVarE.g();
                    }
                    zzatu zzatuVarA = zzaueVarE.a();
                    if (zzatuVarA != null) {
                        strH = zzatuVarA.d();
                        strE = zzatuVarA.e();
                        strI = zzatuVarA.f();
                        if (strH != null) {
                            com.google.android.gms.ads.internal.zzt.q().h().D0(strH);
                        }
                        if (strI != null) {
                            com.google.android.gms.ads.internal.zzt.q().h().I0(strI);
                        }
                    } else {
                        strH = com.google.android.gms.ads.internal.zzt.q().h().h();
                        strI = com.google.android.gms.ads.internal.zzt.q().h().i();
                        strE = null;
                    }
                    Bundle bundle2 = new Bundle(1);
                    if (!com.google.android.gms.ads.internal.zzt.q().h().J()) {
                        if (strI == null || TextUtils.isEmpty(strI)) {
                            bundle2.putString("v_fp_vertical", "no_hash");
                        } else {
                            bundle2.putString("v_fp_vertical", strI);
                        }
                    }
                    if (strH != null && !com.google.android.gms.ads.internal.zzt.q().h().Y()) {
                        bundle2.putString("fingerprint", strH);
                        if (!strH.equals(strE)) {
                            bundle2.putString("v_fp", strE);
                        }
                    }
                    if (!bundle2.isEmpty()) {
                        bundle = bundle2;
                    }
                }
                return new zzeme(bundle);
            }
        });
    }
}
