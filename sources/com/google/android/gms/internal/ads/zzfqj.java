package com.google.android.gms.internal.ads;

import java.util.List;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfqj extends zzfqk {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final transient int f18600q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final transient int f18601r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzfqk f18602s;

    zzfqj(zzfqk zzfqkVar, int i10, int i11) {
        this.f18602s = zzfqkVar;
        this.f18600q = i10;
        this.f18601r = i11;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    final int g() {
        return this.f18602s.i() + this.f18600q + this.f18601r;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzfnu.a(i10, this.f18601r, "index");
        return this.f18602s.get(i10 + this.f18600q);
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    final int i() {
        return this.f18602s.i() + this.f18600q;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    final boolean l() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    @CheckForNull
    final Object[] m() {
        return this.f18602s.m();
    }

    @Override // com.google.android.gms.internal.ads.zzfqk
    /* JADX INFO: renamed from: n */
    public final zzfqk subList(int i10, int i11) {
        zzfnu.g(i10, i11, this.f18601r);
        zzfqk zzfqkVar = this.f18602s;
        int i12 = this.f18600q;
        return zzfqkVar.subList(i10 + i12, i11 + i12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18601r;
    }

    @Override // com.google.android.gms.internal.ads.zzfqk, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i10, int i11) {
        return subList(i10, i11);
    }
}
