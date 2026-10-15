package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcqt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f13783a;

    public zzcqt(zzcqm zzcqmVar) {
        this.f13783a = Collections.singletonList(zzfuj.h(zzcqmVar));
    }

    public zzcqt(List list) {
        this.f13783a = list;
    }

    public static zzeat a(zzeat zzeatVar) {
        return new zzeau(zzeatVar, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzcqs
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                return new zzcqt((zzcqm) obj);
            }
        });
    }
}
