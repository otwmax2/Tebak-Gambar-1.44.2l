package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzdf implements zzde {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected zzdc f14473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected zzdc f14474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzdc f14475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzdc f14476e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ByteBuffer f14477f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ByteBuffer f14478g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f14479h;

    public zzdf() {
        ByteBuffer byteBuffer = zzde.f14420a;
        this.f14477f = byteBuffer;
        this.f14478g = byteBuffer;
        zzdc zzdcVar = zzdc.f14338e;
        this.f14475d = zzdcVar;
        this.f14476e = zzdcVar;
        this.f14473b = zzdcVar;
        this.f14474c = zzdcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void a() {
        this.f14478g = zzde.f14420a;
        this.f14479h = false;
        this.f14473b = this.f14475d;
        this.f14474c = this.f14476e;
        j();
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final zzdc b(zzdc zzdcVar) throws zzdd {
        this.f14475d = zzdcVar;
        this.f14476e = h(zzdcVar);
        return e() ? this.f14476e : zzdc.f14338e;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void c() {
        a();
        this.f14477f = zzde.f14420a;
        zzdc zzdcVar = zzdc.f14338e;
        this.f14475d = zzdcVar;
        this.f14476e = zzdcVar;
        this.f14473b = zzdcVar;
        this.f14474c = zzdcVar;
        l();
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void d() {
        this.f14479h = true;
        k();
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public boolean e() {
        return this.f14476e != zzdc.f14338e;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public boolean f() {
        return this.f14479h && this.f14478g == zzde.f14420a;
    }

    protected zzdc h(zzdc zzdcVar) throws zzdd {
        throw null;
    }

    protected final ByteBuffer i(int i10) {
        if (this.f14477f.capacity() < i10) {
            this.f14477f = ByteBuffer.allocateDirect(i10).order(ByteOrder.nativeOrder());
        } else {
            this.f14477f.clear();
        }
        ByteBuffer byteBuffer = this.f14477f;
        this.f14478g = byteBuffer;
        return byteBuffer;
    }

    protected void j() {
    }

    protected void k() {
    }

    protected void l() {
    }

    protected final boolean m() {
        return this.f14478g.hasRemaining();
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public ByteBuffer zzb() {
        ByteBuffer byteBuffer = this.f14478g;
        this.f14478g = zzde.f14420a;
        return byteBuffer;
    }
}
