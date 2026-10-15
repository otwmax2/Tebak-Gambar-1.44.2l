package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.internal.ShowFirstParty;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@ShowFirstParty
public final class zzfia {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f18257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Looper f18258b;

    public zzfia(Context context, Looper looper) {
        this.f18257a = context;
        this.f18258b = looper;
    }

    public final void a(String str) {
        zzfio zzfioVarI = zzfiq.I();
        zzfioVarI.o(this.f18257a.getPackageName());
        zzfioVarI.q(2);
        zzfil zzfilVarI = zzfim.I();
        zzfilVarI.o(str);
        zzfilVarI.p(2);
        zzfioVarI.p(zzfilVarI);
        new zzfib(this.f18257a, this.f18258b, (zzfiq) zzfioVarI.k()).a();
    }
}
