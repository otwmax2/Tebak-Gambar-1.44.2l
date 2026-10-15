package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class x3 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f24387o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f24388p = "_err";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ Bundle f24389q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ y3 f24390r;

    x3(y3 y3Var, String str, String str2, Bundle bundle) {
        this.f24390r = y3Var;
        this.f24387o = str;
        this.f24389q = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24390r.f24405a.e((zzav) Preconditions.k(this.f24390r.f24405a.f0().w0(this.f24387o, this.f24388p, this.f24389q, "auto", this.f24390r.f24405a.x().a(), false, true)), this.f24387o);
    }
}
