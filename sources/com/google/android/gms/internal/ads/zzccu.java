package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.api.Releasable;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public abstract class zzccu implements Releasable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected final Context f11862o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected final String f11863p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected final WeakReference f11864q;

    public zzccu(zzcbj zzcbjVar) {
        Context context = zzcbjVar.getContext();
        this.f11862o = context;
        this.f11863p = com.google.android.gms.ads.internal.zzt.r().B(context, zzcbjVar.k().f11605o);
        this.f11864q = new WeakReference(zzcbjVar);
    }

    static /* bridge */ /* synthetic */ void f(zzccu zzccuVar, String str, Map map) {
        zzcbj zzcbjVar = (zzcbj) zzccuVar.f11864q.get();
        if (zzcbjVar != null) {
            zzcbjVar.v0("onPrecacheEvent", map);
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void c() {
    }

    public abstract void g();

    public final void i(String str, String str2, String str3, String str4) {
        zzbyt.f11579b.post(new zzcct(this, str, str2, str3, str4));
    }

    protected final void j(String str, String str2, int i10) {
        zzbyt.f11579b.post(new zzccr(this, str, str2, i10));
    }

    public final void l(String str, String str2, long j10) {
        zzbyt.f11579b.post(new zzccs(this, str, str2, j10));
    }

    public final void m(String str, String str2, int i10, int i11, long j10, long j11, boolean z10, int i12, int i13) {
        zzbyt.f11579b.post(new zzccq(this, str, str2, i10, i11, j10, j11, z10, i12, i13));
    }

    public final void n(String str, String str2, long j10, long j11, boolean z10, long j12, long j13, long j14, int i10, int i11) {
        zzbyt.f11579b.post(new zzccp(this, str, str2, j10, j11, j12, j13, j14, z10, i10, i11));
    }

    protected void p(int i10) {
    }

    protected void r(int i10) {
    }

    protected void s(int i10) {
    }

    protected void u(int i10) {
    }

    public abstract boolean v(String str);

    public boolean w(String str, String[] strArr) {
        return v(str);
    }

    public boolean x(String str, String[] strArr, zzccm zzccmVar) {
        return v(str);
    }
}
