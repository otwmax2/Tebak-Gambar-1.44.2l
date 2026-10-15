package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Looper;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzua extends zzrt implements zztr {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzbg f20747h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzay f20748i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzff f20749j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzpz f20750k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f20751l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f20752m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f20753n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f20754o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f20755p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzgi f20756q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zztx f20757r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzwx f20758s;

    /* synthetic */ zzua(zzbg zzbgVar, zzff zzffVar, zztx zztxVar, zzpz zzpzVar, zzwx zzwxVar, int i10, zztz zztzVar, byte[] bArr) {
        zzay zzayVar = zzbgVar.f10682b;
        Objects.requireNonNull(zzayVar);
        this.f20748i = zzayVar;
        this.f20747h = zzbgVar;
        this.f20749j = zzffVar;
        this.f20757r = zztxVar;
        this.f20750k = zzpzVar;
        this.f20758s = zzwxVar;
        this.f20751l = i10;
        this.f20752m = true;
        this.f20753n = -9223372036854775807L;
    }

    private final void x() {
        long j10 = this.f20753n;
        boolean z10 = this.f20754o;
        boolean z11 = this.f20755p;
        zzbg zzbgVar = this.f20747h;
        zzun zzunVar = new zzun(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j10, j10, 0L, 0L, z10, false, false, null, zzbgVar, z11 ? zzbgVar.f10684d : null);
        t(this.f20752m ? new zztw(this, zzunVar) : zzunVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final void E() {
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final zzbg T() {
        return this.f20747h;
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final void a(zzsq zzsqVar) {
        ((zztv) zzsqVar).z();
    }

    @Override // com.google.android.gms.internal.ads.zztr
    public final void b(long j10, boolean z10, boolean z11) {
        if (j10 == -9223372036854775807L) {
            j10 = this.f20753n;
        }
        if (!this.f20752m && this.f20753n == j10 && this.f20754o == z10 && this.f20755p == z11) {
            return;
        }
        this.f20753n = j10;
        this.f20754o = z10;
        this.f20755p = z11;
        this.f20752m = false;
        x();
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final zzsq i(zzss zzssVar, zzwt zzwtVar, long j10) {
        zzfg zzfgVarZza = this.f20749j.zza();
        zzgi zzgiVar = this.f20756q;
        if (zzgiVar != null) {
            zzfgVarZza.f(zzgiVar);
        }
        Uri uri = this.f20748i.f10112a;
        zztx zztxVar = this.f20757r;
        l();
        return new zztv(uri, zzfgVarZza, new zzrv(zztxVar.f20741a), this.f20750k, m(zzssVar), this.f20758s, o(zzssVar), this, zzwtVar, null, this.f20751l, null);
    }

    @Override // com.google.android.gms.internal.ads.zzrt
    protected final void s(zzgi zzgiVar) {
        this.f20756q = zzgiVar;
        Objects.requireNonNull(Looper.myLooper());
        l();
        x();
    }

    @Override // com.google.android.gms.internal.ads.zzrt
    protected final void u() {
    }
}
