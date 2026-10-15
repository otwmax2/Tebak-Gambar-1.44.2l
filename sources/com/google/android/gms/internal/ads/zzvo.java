package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzvo extends zzct {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f20860q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f20861r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f20862s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f20863t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f20864u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f20865v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final SparseArray f20866w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final SparseBooleanArray f20867x;

    @Deprecated
    public zzvo() {
        this.f20866w = new SparseArray();
        this.f20867x = new SparseBooleanArray();
        v();
    }

    private final void v() {
        this.f20860q = true;
        this.f20861r = true;
        this.f20862s = true;
        this.f20863t = true;
        this.f20864u = true;
        this.f20865v = true;
    }

    @Override // com.google.android.gms.internal.ads.zzct
    public final /* synthetic */ zzct e(int i10, int i11, boolean z10) {
        super.e(i10, i11, true);
        return this;
    }

    public final zzvo o(int i10, boolean z10) {
        if (this.f20867x.get(i10) == z10) {
            return this;
        }
        if (z10) {
            this.f20867x.put(i10, true);
        } else {
            this.f20867x.delete(i10);
        }
        return this;
    }

    public zzvo(Context context) {
        super.d(context);
        Point pointB = zzew.b(context);
        e(pointB.x, pointB.y, true);
        this.f20866w = new SparseArray();
        this.f20867x = new SparseBooleanArray();
        v();
    }

    /* synthetic */ zzvo(zzvq zzvqVar, zzvn zzvnVar) {
        super(zzvqVar);
        this.f20860q = zzvqVar.f20876d0;
        this.f20861r = zzvqVar.f20878f0;
        this.f20862s = zzvqVar.f20880h0;
        this.f20863t = zzvqVar.f20885m0;
        this.f20864u = zzvqVar.f20886n0;
        this.f20865v = zzvqVar.f20888p0;
        SparseArray sparseArray = zzvqVar.f20889q0;
        SparseArray sparseArray2 = new SparseArray();
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            sparseArray2.put(sparseArray.keyAt(i10), new HashMap((Map) sparseArray.valueAt(i10)));
        }
        this.f20866w = sparseArray2;
        this.f20867x = zzvqVar.f20890r0.clone();
    }
}
