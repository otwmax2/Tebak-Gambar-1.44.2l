package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzcor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcqk f13667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f13668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzeyd f13669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzcei f13670d;

    public zzcor(View view, zzcei zzceiVar, zzcqk zzcqkVar, zzeyd zzeydVar) {
        this.f13668b = view;
        this.f13670d = zzceiVar;
        this.f13667a = zzcqkVar;
        this.f13669c = zzeydVar;
    }

    public static final zzdbu f(final Context context, final zzbzg zzbzgVar, final zzeyc zzeycVar, final zzeyx zzeyxVar) {
        return new zzdbu(new zzcwc() { // from class: com.google.android.gms.internal.ads.zzcop
            @Override // com.google.android.gms.internal.ads.zzcwc
            public final void k() {
                com.google.android.gms.ads.internal.zzt.u().n(context, zzbzgVar.f11605o, zzeycVar.D.toString(), zzeyxVar.f17733f);
            }
        }, zzbzn.f11619f);
    }

    public static final Set g(zzcqb zzcqbVar) {
        return Collections.singleton(new zzdbu(zzcqbVar, zzbzn.f11619f));
    }

    public static final zzdbu h(zzcpz zzcpzVar) {
        return new zzdbu(zzcpzVar, zzbzn.f11618e);
    }

    public final View a() {
        return this.f13668b;
    }

    public final zzcei b() {
        return this.f13670d;
    }

    public final zzcqk c() {
        return this.f13667a;
    }

    public zzcwa d(Set set) {
        return new zzcwa(set);
    }

    public final zzeyd e() {
        return this.f13669c;
    }
}
