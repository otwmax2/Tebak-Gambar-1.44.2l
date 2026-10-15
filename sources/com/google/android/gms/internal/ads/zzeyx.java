package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeyx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzfl f17728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzbjx f17729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzeib f17730c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzl f17731d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzq f17732e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f17733f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f17734g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f17735h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final zzbdl f17736i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzw f17737j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f17738k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AdManagerAdViewOptions f17739l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final PublisherAdViewOptions f17740m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzcb f17741n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final zzeyk f17742o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f17743p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final boolean f17744q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzcf f17745r;

    /* synthetic */ zzeyx(zzeyv zzeyvVar, zzeyw zzeywVar) {
        this.f17732e = zzeyvVar.f17710b;
        this.f17733f = zzeyvVar.f17711c;
        this.f17745r = zzeyvVar.f17727s;
        int i10 = zzeyvVar.f17709a.f5906o;
        long j10 = zzeyvVar.f17709a.f5907p;
        Bundle bundle = zzeyvVar.f17709a.f5908q;
        int i11 = zzeyvVar.f17709a.f5909r;
        List list = zzeyvVar.f17709a.f5910s;
        boolean z10 = zzeyvVar.f17709a.f5911t;
        int i12 = zzeyvVar.f17709a.f5912u;
        boolean z11 = true;
        if (!zzeyvVar.f17709a.f5913v && !zzeyvVar.f17713e) {
            z11 = false;
        }
        this.f17731d = new com.google.android.gms.ads.internal.client.zzl(i10, j10, bundle, i11, list, z10, i12, z11, zzeyvVar.f17709a.f5914w, zzeyvVar.f17709a.f5915x, zzeyvVar.f17709a.f5916y, zzeyvVar.f17709a.f5917z, zzeyvVar.f17709a.A, zzeyvVar.f17709a.B, zzeyvVar.f17709a.C, zzeyvVar.f17709a.D, zzeyvVar.f17709a.E, zzeyvVar.f17709a.F, zzeyvVar.f17709a.G, zzeyvVar.f17709a.H, zzeyvVar.f17709a.I, zzeyvVar.f17709a.J, com.google.android.gms.ads.internal.util.zzs.z(zzeyvVar.f17709a.K), zzeyvVar.f17709a.L);
        this.f17728a = zzeyvVar.f17712d != null ? zzeyvVar.f17712d : zzeyvVar.f17716h != null ? zzeyvVar.f17716h.f10650t : null;
        this.f17734g = zzeyvVar.f17714f;
        this.f17735h = zzeyvVar.f17715g;
        this.f17736i = zzeyvVar.f17714f == null ? null : zzeyvVar.f17716h == null ? new zzbdl(new NativeAdOptions.Builder().a()) : zzeyvVar.f17716h;
        this.f17737j = zzeyvVar.f17717i;
        this.f17738k = zzeyvVar.f17721m;
        this.f17739l = zzeyvVar.f17718j;
        this.f17740m = zzeyvVar.f17719k;
        this.f17741n = zzeyvVar.f17720l;
        this.f17729b = zzeyvVar.f17722n;
        this.f17742o = new zzeyk(zzeyvVar.f17723o, null);
        this.f17743p = zzeyvVar.f17724p;
        this.f17730c = zzeyvVar.f17725q;
        this.f17744q = zzeyvVar.f17726r;
    }

    public final zzbfo a() {
        PublisherAdViewOptions publisherAdViewOptions = this.f17740m;
        if (publisherAdViewOptions == null && this.f17739l == null) {
            return null;
        }
        return publisherAdViewOptions != null ? publisherAdViewOptions.W3() : this.f17739l.W3();
    }

    public final boolean b() {
        return this.f17733f.matches((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.I2));
    }
}
