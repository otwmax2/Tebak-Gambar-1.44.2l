package com.google.android.gms.internal.ads;

import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfgt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfgb f18184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f18185b;

    public zzfgt(zzfgb zzfgbVar, String str) {
        ArrayList arrayList = new ArrayList();
        this.f18185b = arrayList;
        this.f18184a = zzfgbVar;
        arrayList.add(str);
    }

    public final zzfgb a() {
        return this.f18184a;
    }

    public final ArrayList b() {
        return this.f18185b;
    }

    public final void c(String str) {
        this.f18185b.add(str);
    }
}
