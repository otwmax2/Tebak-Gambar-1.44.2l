package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdh implements zzde {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f14691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f14692c = 1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f14693d = 1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzdc f14694e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzdc f14695f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zzdc f14696g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private zzdc f14697h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f14698i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private zzdg f14699j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ByteBuffer f14700k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ShortBuffer f14701l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ByteBuffer f14702m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f14703n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f14704o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f14705p;

    public zzdh() {
        zzdc zzdcVar = zzdc.f14338e;
        this.f14694e = zzdcVar;
        this.f14695f = zzdcVar;
        this.f14696g = zzdcVar;
        this.f14697h = zzdcVar;
        ByteBuffer byteBuffer = zzde.f14420a;
        this.f14700k = byteBuffer;
        this.f14701l = byteBuffer.asShortBuffer();
        this.f14702m = byteBuffer;
        this.f14691b = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void a() {
        if (e()) {
            zzdc zzdcVar = this.f14694e;
            this.f14696g = zzdcVar;
            zzdc zzdcVar2 = this.f14695f;
            this.f14697h = zzdcVar2;
            if (this.f14698i) {
                this.f14699j = new zzdg(zzdcVar.f14339a, zzdcVar.f14340b, this.f14692c, this.f14693d, zzdcVar2.f14339a);
            } else {
                zzdg zzdgVar = this.f14699j;
                if (zzdgVar != null) {
                    zzdgVar.c();
                }
            }
        }
        this.f14702m = zzde.f14420a;
        this.f14703n = 0L;
        this.f14704o = 0L;
        this.f14705p = false;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final zzdc b(zzdc zzdcVar) throws zzdd {
        if (zzdcVar.f14341c != 2) {
            throw new zzdd(zzdcVar);
        }
        int i10 = this.f14691b;
        if (i10 == -1) {
            i10 = zzdcVar.f14339a;
        }
        this.f14694e = zzdcVar;
        zzdc zzdcVar2 = new zzdc(i10, zzdcVar.f14340b, 2);
        this.f14695f = zzdcVar2;
        this.f14698i = true;
        return zzdcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void c() {
        this.f14692c = 1.0f;
        this.f14693d = 1.0f;
        zzdc zzdcVar = zzdc.f14338e;
        this.f14694e = zzdcVar;
        this.f14695f = zzdcVar;
        this.f14696g = zzdcVar;
        this.f14697h = zzdcVar;
        ByteBuffer byteBuffer = zzde.f14420a;
        this.f14700k = byteBuffer;
        this.f14701l = byteBuffer.asShortBuffer();
        this.f14702m = byteBuffer;
        this.f14691b = -1;
        this.f14698i = false;
        this.f14699j = null;
        this.f14703n = 0L;
        this.f14704o = 0L;
        this.f14705p = false;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void d() {
        zzdg zzdgVar = this.f14699j;
        if (zzdgVar != null) {
            zzdgVar.e();
        }
        this.f14705p = true;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final boolean e() {
        if (this.f14695f.f14339a != -1) {
            return Math.abs(this.f14692c + (-1.0f)) >= 1.0E-4f || Math.abs(this.f14693d + (-1.0f)) >= 1.0E-4f || this.f14695f.f14339a != this.f14694e.f14339a;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final boolean f() {
        zzdg zzdgVar;
        return this.f14705p && ((zzdgVar = this.f14699j) == null || zzdgVar.a() == 0);
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void g(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            zzdg zzdgVar = this.f14699j;
            Objects.requireNonNull(zzdgVar);
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.f14703n += (long) iRemaining;
            zzdgVar.f(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    public final long h(long j10) {
        long j11 = this.f14704o;
        if (j11 < 1024) {
            double d10 = this.f14692c;
            double d11 = j10;
            Double.isNaN(d10);
            Double.isNaN(d11);
            return (long) (d10 * d11);
        }
        long j12 = this.f14703n;
        zzdg zzdgVar = this.f14699j;
        Objects.requireNonNull(zzdgVar);
        long jB = j12 - ((long) zzdgVar.b());
        int i10 = this.f14697h.f14339a;
        int i11 = this.f14696g.f14339a;
        return i10 == i11 ? zzew.h0(j10, jB, j11) : zzew.h0(j10, jB * ((long) i10), j11 * ((long) i11));
    }

    public final void i(float f10) {
        if (this.f14693d != f10) {
            this.f14693d = f10;
            this.f14698i = true;
        }
    }

    public final void j(float f10) {
        if (this.f14692c != f10) {
            this.f14692c = f10;
            this.f14698i = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final ByteBuffer zzb() {
        int iA;
        zzdg zzdgVar = this.f14699j;
        if (zzdgVar != null && (iA = zzdgVar.a()) > 0) {
            if (this.f14700k.capacity() < iA) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iA).order(ByteOrder.nativeOrder());
                this.f14700k = byteBufferOrder;
                this.f14701l = byteBufferOrder.asShortBuffer();
            } else {
                this.f14700k.clear();
                this.f14701l.clear();
            }
            zzdgVar.d(this.f14701l);
            this.f14704o += (long) iA;
            this.f14700k.limit(iA);
            this.f14702m = this.f14700k;
        }
        ByteBuffer byteBuffer = this.f14702m;
        this.f14702m = zzde.f14420a;
        return byteBuffer;
    }
}
