package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbyn implements zzaty {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzg f11567b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    final zzbyk f11569d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f11566a = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    final HashSet f11570e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    final HashSet f11571f = new HashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f11572g = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbyl f11568c = new zzbyl();

    public zzbyn(String str, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.f11569d = new zzbyk(str, zzgVar);
        this.f11567b = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaty
    public final void S(boolean z10) {
        long jA = com.google.android.gms.ads.internal.zzt.b().a();
        if (!z10) {
            this.f11567b.E0(jA);
            this.f11567b.G0(this.f11569d.f11557d);
            return;
        }
        if (jA - this.f11567b.d() > ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.N0)).longValue()) {
            this.f11569d.f11557d = -1;
        } else {
            this.f11569d.f11557d = this.f11567b.a();
        }
        this.f11572g = true;
    }

    public final zzbyc a(Clock clock, String str) {
        return new zzbyc(clock, this, this.f11568c.a(), str);
    }

    public final void b(zzbyc zzbycVar) {
        synchronized (this.f11566a) {
            this.f11570e.add(zzbycVar);
        }
    }

    public final void c() {
        synchronized (this.f11566a) {
            this.f11569d.b();
        }
    }

    public final void d() {
        synchronized (this.f11566a) {
            this.f11569d.c();
        }
    }

    public final void e() {
        synchronized (this.f11566a) {
            this.f11569d.d();
        }
    }

    public final void f() {
        synchronized (this.f11566a) {
            this.f11569d.e();
        }
    }

    public final void g(com.google.android.gms.ads.internal.client.zzl zzlVar, long j10) {
        synchronized (this.f11566a) {
            this.f11569d.f(zzlVar, j10);
        }
    }

    public final void h(HashSet hashSet) {
        synchronized (this.f11566a) {
            this.f11570e.addAll(hashSet);
        }
    }

    public final boolean i() {
        return this.f11572g;
    }

    public final Bundle j(Context context, zzfad zzfadVar) {
        HashSet hashSet = new HashSet();
        synchronized (this.f11566a) {
            hashSet.addAll(this.f11570e);
            this.f11570e.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", this.f11569d.a(context, this.f11568c.b()));
        Bundle bundle2 = new Bundle();
        Iterator it = this.f11571f.iterator();
        if (it.hasNext()) {
            throw null;
        }
        bundle.putBundle("slots", bundle2);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            arrayList.add(((zzbyc) it2.next()).a());
        }
        bundle.putParcelableArrayList("ads", arrayList);
        zzfadVar.b(hashSet);
        return bundle;
    }
}
