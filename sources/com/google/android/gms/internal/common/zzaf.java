package com.google.android.gms.internal.common;

import java.util.List;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzaf extends zzag {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final transient int f21680q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final transient int f21681r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzag f21682s;

    zzaf(zzag zzagVar, int i10, int i11) {
        this.f21682s = zzagVar;
        this.f21680q = i10;
        this.f21681r = i11;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final int g() {
        return this.f21682s.i() + this.f21680q + this.f21681r;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzs.a(i10, this.f21681r, "index");
        return this.f21682s.get(i10 + this.f21680q);
    }

    @Override // com.google.android.gms.internal.common.zzac
    final int i() {
        return this.f21682s.i() + this.f21680q;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final boolean l() {
        return true;
    }

    @Override // com.google.android.gms.internal.common.zzac
    @CheckForNull
    final Object[] m() {
        return this.f21682s.m();
    }

    @Override // com.google.android.gms.internal.common.zzag
    /* JADX INFO: renamed from: n */
    public final zzag subList(int i10, int i11) {
        zzs.c(i10, i11, this.f21681r);
        zzag zzagVar = this.f21682s;
        int i12 = this.f21680q;
        return zzagVar.subList(i10 + i12, i11 + i12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f21681r;
    }

    @Override // com.google.android.gms.internal.common.zzag, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i10, int i11) {
        return subList(i10, i11);
    }
}
