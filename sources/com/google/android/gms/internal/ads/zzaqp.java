package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaqp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f9731a = Collections.emptyList();

    public final List a() {
        List list = this.f9731a;
        this.f9731a = Collections.emptyList();
        return list;
    }

    public final void b(List list) {
        this.f9731a = new ArrayList(list);
    }
}
