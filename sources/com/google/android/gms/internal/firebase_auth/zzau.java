package com.google.android.gms.internal.firebase_auth;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzau {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaf f22415a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f22416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzba f22417c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f22418d;

    private zzau(zzba zzbaVar) {
        this(zzbaVar, false, zzaj.f22409b, Integer.MAX_VALUE);
    }

    public static zzau b(char c10) {
        zzah zzahVar = new zzah('.');
        zzav.c(zzahVar);
        return new zzau(new zzax(zzahVar));
    }

    public final List<String> c(CharSequence charSequence) {
        zzav.c(charSequence);
        Iterator<String> itA = this.f22417c.a(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (itA.hasNext()) {
            arrayList.add(itA.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    private zzau(zzba zzbaVar, boolean z10, zzaf zzafVar, int i10) {
        this.f22417c = zzbaVar;
        this.f22416b = false;
        this.f22415a = zzafVar;
        this.f22418d = Integer.MAX_VALUE;
    }
}
