package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap f17840a = new HashMap();

    public final zzfaw a(zzfan zzfanVar, Context context, zzfaf zzfafVar, zzfbd zzfbdVar) {
        zzfaw zzfawVar = (zzfaw) this.f17840a.get(zzfanVar);
        if (zzfawVar != null) {
            return zzfawVar;
        }
        zzfak zzfakVar = new zzfak(zzfaq.V3(zzfanVar, context));
        zzfaw zzfawVar2 = new zzfaw(zzfakVar, new zzfbf(zzfakVar, zzfafVar, zzfbdVar));
        this.f17840a.put(zzfanVar, zzfawVar2);
        return zzfawVar2;
    }
}
