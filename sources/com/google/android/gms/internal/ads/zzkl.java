package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkl extends zzgs {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ int f20069o = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f20070h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f20071i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int[] f20072j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int[] f20073k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzcn[] f20074l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Object[] f20075m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final HashMap f20076n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkl(Collection collection, zzum zzumVar, byte[] bArr) {
        super(false, zzumVar, null);
        int iC = 0;
        int size = collection.size();
        this.f20072j = new int[size];
        this.f20073k = new int[size];
        this.f20074l = new zzcn[size];
        this.f20075m = new Object[size];
        this.f20076n = new HashMap();
        Iterator it = collection.iterator();
        int iB = 0;
        int i10 = 0;
        while (it.hasNext()) {
            zzjv zzjvVar = (zzjv) it.next();
            this.f20074l[i10] = zzjvVar.zza();
            this.f20073k[i10] = iC;
            this.f20072j[i10] = iB;
            iC += this.f20074l[i10].c();
            iB += this.f20074l[i10].b();
            this.f20075m[i10] = zzjvVar.zzb();
            this.f20076n.put(this.f20075m[i10], Integer.valueOf(i10));
            i10++;
        }
        this.f20070h = iC;
        this.f20071i = iB;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final int b() {
        return this.f20071i;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final int c() {
        return this.f20070h;
    }

    @Override // com.google.android.gms.internal.ads.zzgs
    protected final int p(Object obj) {
        Integer num = (Integer) this.f20076n.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.internal.ads.zzgs
    protected final int q(int i10) {
        return zzew.N(this.f20072j, i10 + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzgs
    protected final int r(int i10) {
        return zzew.N(this.f20073k, i10 + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzgs
    protected final int s(int i10) {
        return this.f20072j[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzgs
    protected final int t(int i10) {
        return this.f20073k[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzgs
    protected final zzcn u(int i10) {
        return this.f20074l[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzgs
    protected final Object v(int i10) {
        return this.f20075m[i10];
    }

    final List y() {
        return Arrays.asList(this.f20074l);
    }
}
