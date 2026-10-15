package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@Deprecated
public final class zzbbh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f10467a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbbj f10468b;

    public zzbbh(zzbbj zzbbjVar) {
        this.f10468b = zzbbjVar;
    }

    public final zzbbj a() {
        return this.f10468b;
    }

    public final void b(String str, zzbbg zzbbgVar) {
        this.f10467a.put(str, zzbbgVar);
    }

    public final void c(String str, String str2, long j10) {
        zzbbj zzbbjVar = this.f10468b;
        zzbbg zzbbgVar = (zzbbg) this.f10467a.get(str2);
        String[] strArr = {str};
        if (zzbbgVar != null) {
            zzbbjVar.e(zzbbgVar, j10, strArr);
        }
        this.f10467a.put(str, new zzbbg(j10, null, null));
    }
}
