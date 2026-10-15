package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzxr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzyd f21034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzxs f21035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayDeque f21036c = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayDeque f21037d = new ArrayDeque();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f21038e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzda f21039f = zzda.f14257e;

    public zzxr(zzyd zzydVar, zzxs zzxsVar) {
        this.f21034a = zzydVar;
        this.f21035b = zzxsVar;
    }

    public final void a(String str) {
        Context context = this.f21035b.P0;
        if (zzew.f17494a < 29 || context.getApplicationContext().getApplicationInfo().targetSdkVersion < 29) {
            return;
        }
        zzfnb.b(str).startsWith("OMX.");
    }

    public final boolean b(zzaf zzafVar) throws zzhj {
        if (!this.f21038e) {
            return false;
        }
        this.f21038e = false;
        return false;
    }
}
