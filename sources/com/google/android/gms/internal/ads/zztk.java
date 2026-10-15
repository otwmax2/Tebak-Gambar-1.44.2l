package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zztk extends zzsb {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final zzbg f20691t;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzsu[] f20692k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzcn[] f20693l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final ArrayList f20694m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Map f20695n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzfrg f20696o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f20697p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long[][] f20698q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private zztj f20699r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzsd f20700s;

    static {
        zzaj zzajVar = new zzaj();
        zzajVar.a("MergingMediaSource");
        f20691t = zzajVar.c();
    }

    public zztk(boolean z10, boolean z11, zzsu... zzsuVarArr) {
        zzsd zzsdVar = new zzsd();
        this.f20692k = zzsuVarArr;
        this.f20700s = zzsdVar;
        this.f20694m = new ArrayList(Arrays.asList(zzsuVarArr));
        this.f20697p = -1;
        this.f20693l = new zzcn[zzsuVarArr.length];
        this.f20698q = new long[0][];
        this.f20695n = new HashMap();
        this.f20696o = zzfrn.a(8).b(2).c();
    }

    @Override // com.google.android.gms.internal.ads.zzsb
    protected final /* bridge */ /* synthetic */ zzss A(Object obj, zzss zzssVar) {
        if (((Integer) obj).intValue() == 0) {
            return zzssVar;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzsb
    protected final /* bridge */ /* synthetic */ void B(Object obj, zzsu zzsuVar, zzcn zzcnVar) {
        int iB;
        if (this.f20699r != null) {
            return;
        }
        if (this.f20697p == -1) {
            iB = zzcnVar.b();
            this.f20697p = iB;
        } else {
            int iB2 = zzcnVar.b();
            int i10 = this.f20697p;
            if (iB2 != i10) {
                this.f20699r = new zztj(0);
                return;
            }
            iB = i10;
        }
        if (this.f20698q.length == 0) {
            this.f20698q = (long[][]) Array.newInstance((Class<?>) long.class, iB, this.f20693l.length);
        }
        this.f20694m.remove(zzsuVar);
        this.f20693l[((Integer) obj).intValue()] = zzcnVar;
        if (this.f20694m.isEmpty()) {
            t(this.f20693l[0]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsb, com.google.android.gms.internal.ads.zzsu
    public final void E() throws IOException {
        zztj zztjVar = this.f20699r;
        if (zztjVar != null) {
            throw zztjVar;
        }
        super.E();
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final zzbg T() {
        zzsu[] zzsuVarArr = this.f20692k;
        return zzsuVarArr.length > 0 ? zzsuVarArr[0].T() : f20691t;
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final void a(zzsq zzsqVar) {
        zzti zztiVar = (zzti) zzsqVar;
        int i10 = 0;
        while (true) {
            zzsu[] zzsuVarArr = this.f20692k;
            if (i10 >= zzsuVarArr.length) {
                return;
            }
            zzsuVarArr[i10].a(zztiVar.k(i10));
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final zzsq i(zzss zzssVar, zzwt zzwtVar, long j10) {
        int length = this.f20692k.length;
        zzsq[] zzsqVarArr = new zzsq[length];
        int iA = this.f20693l[0].a(zzssVar.f11010a);
        for (int i10 = 0; i10 < length; i10++) {
            zzsqVarArr[i10] = this.f20692k[i10].i(zzssVar.c(this.f20693l[i10].f(iA)), zzwtVar, j10 - this.f20698q[iA][i10]);
        }
        return new zzti(this.f20700s, this.f20698q[iA], zzsqVarArr, null);
    }

    @Override // com.google.android.gms.internal.ads.zzsb, com.google.android.gms.internal.ads.zzrt
    protected final void s(zzgi zzgiVar) {
        super.s(zzgiVar);
        for (int i10 = 0; i10 < this.f20692k.length; i10++) {
            x(Integer.valueOf(i10), this.f20692k[i10]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsb, com.google.android.gms.internal.ads.zzrt
    protected final void u() {
        super.u();
        Arrays.fill(this.f20693l, (Object) null);
        this.f20697p = -1;
        this.f20699r = null;
        this.f20694m.clear();
        Collections.addAll(this.f20694m, this.f20692k);
    }
}
