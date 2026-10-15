package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import com.vungle.warren.AdLoader;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzht {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f19818a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    zzdm f19819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    zzfok f19820c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    zzfok f19821d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    zzfok f19822e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    zzfok f19823f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    zzfok f19824g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    zzfnj f19825h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    Looper f19826i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    zzk f19827j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f19828k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f19829l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    zzkq f19830m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    long f19831n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    long f19832o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    boolean f19833p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f19834q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    zzhe f19835r;

    public zzht(final Context context, zzcdr zzcdrVar, byte[] bArr) {
        zzhn zzhnVar = new zzhn(zzcdrVar, null);
        zzho zzhoVar = new zzho(context);
        zzfok zzfokVar = new zzfok() { // from class: com.google.android.gms.internal.ads.zzhp
            @Override // com.google.android.gms.internal.ads.zzfok
            public final Object zza() {
                return new zzwc(context);
            }
        };
        zzhq zzhqVar = new zzfok() { // from class: com.google.android.gms.internal.ads.zzhq
            @Override // com.google.android.gms.internal.ads.zzfok
            public final Object zza() {
                return new zzhf();
            }
        };
        zzhr zzhrVar = new zzhr(context);
        zzhs zzhsVar = new zzfnj() { // from class: com.google.android.gms.internal.ads.zzhs
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                return new zznf((zzdm) obj);
            }
        };
        Objects.requireNonNull(context);
        this.f19818a = context;
        this.f19820c = zzhnVar;
        this.f19821d = zzhoVar;
        this.f19822e = zzfokVar;
        this.f19823f = zzhqVar;
        this.f19824g = zzhrVar;
        this.f19825h = zzhsVar;
        this.f19826i = zzew.e();
        this.f19827j = zzk.f20001c;
        this.f19828k = 1;
        this.f19829l = true;
        this.f19830m = zzkq.f20082g;
        this.f19835r = new zzhe(0.97f, 1.03f, 1000L, 1.0E-7f, zzew.g0(20L), zzew.g0(500L), 0.999f, null);
        this.f19819b = zzdm.f15127a;
        this.f19831n = 500L;
        this.f19832o = AdLoader.RETRY_DELAY;
        this.f19833p = true;
    }

    static /* synthetic */ zzsr a(Context context) {
        return new zzsf(context, new zzzp());
    }
}
