package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.view.Surface;
import android.view.TextureView;
import com.facebook.internal.security.CertificateUtil;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzccb extends zzcap implements TextureView.SurfaceTextureListener, zzcaz {
    private int A;
    private zzcbh B;
    private final boolean C;
    private boolean D;
    private boolean E;
    private int F;
    private int G;
    private float H;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzcbj f11790r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzcbk f11791s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzcbi f11792t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private zzcao f11793u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Surface f11794v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private zzcba f11795w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f11796x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String[] f11797y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f11798z;

    public zzccb(Context context, zzcbk zzcbkVar, zzcbj zzcbjVar, boolean z10, boolean z11, zzcbi zzcbiVar, Integer num) {
        super(context, num);
        this.A = 1;
        this.f11790r = zzcbjVar;
        this.f11791s = zzcbkVar;
        this.C = z10;
        this.f11792t = zzcbiVar;
        setSurfaceTextureListener(this);
        zzcbkVar.a(this);
    }

    private static String R(String str, Exception exc) {
        return str + "/" + exc.getClass().getCanonicalName() + CertificateUtil.DELIMITER + exc.getMessage();
    }

    private final void S() {
        zzcba zzcbaVar = this.f11795w;
        if (zzcbaVar != null) {
            zzcbaVar.F(true);
        }
    }

    private final void T() {
        if (this.D) {
            return;
        }
        this.D = true;
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbw
            @Override // java.lang.Runnable
            public final void run() {
                this.f11778o.G();
            }
        });
        k();
        this.f11791s.b();
        if (this.E) {
            r();
        }
    }

    private final void U(boolean z10) {
        zzcba zzcbaVar = this.f11795w;
        if ((zzcbaVar != null && !z10) || this.f11796x == null || this.f11794v == null) {
            return;
        }
        if (z10) {
            if (!b0()) {
                zzbza.g("No valid ExoPlayerAdapter exists when switch source.");
                return;
            } else {
                zzcbaVar.J();
                W();
            }
        }
        if (this.f11796x.startsWith("cache:")) {
            zzccu zzccuVarB0 = this.f11790r.b0(this.f11796x);
            if (zzccuVarB0 instanceof zzcdd) {
                zzcba zzcbaVarY = ((zzcdd) zzccuVarB0).y();
                this.f11795w = zzcbaVarY;
                if (!zzcbaVarY.K()) {
                    zzbza.g("Precached video player has been released.");
                    return;
                }
            } else {
                if (!(zzccuVarB0 instanceof zzcda)) {
                    zzbza.g("Stream cache miss: ".concat(String.valueOf(this.f11796x)));
                    return;
                }
                zzcda zzcdaVar = (zzcda) zzccuVarB0;
                String strD = D();
                ByteBuffer byteBufferZ = zzcdaVar.z();
                boolean zA = zzcdaVar.A();
                String strY = zzcdaVar.y();
                if (strY == null) {
                    zzbza.g("Stream cache URL is null.");
                    return;
                } else {
                    zzcba zzcbaVarC = C();
                    this.f11795w = zzcbaVarC;
                    zzcbaVarC.w(new Uri[]{Uri.parse(strY)}, strD, byteBufferZ, zA);
                }
            }
        } else {
            this.f11795w = C();
            String strD2 = D();
            Uri[] uriArr = new Uri[this.f11797y.length];
            int i10 = 0;
            while (true) {
                String[] strArr = this.f11797y;
                if (i10 >= strArr.length) {
                    break;
                }
                uriArr[i10] = Uri.parse(strArr[i10]);
                i10++;
            }
            this.f11795w.v(uriArr, strD2);
        }
        this.f11795w.B(this);
        X(this.f11794v, false);
        if (this.f11795w.K()) {
            int iN = this.f11795w.N();
            this.A = iN;
            if (iN == 3) {
                T();
            }
        }
    }

    private final void V() {
        zzcba zzcbaVar = this.f11795w;
        if (zzcbaVar != null) {
            zzcbaVar.F(false);
        }
    }

    private final void W() {
        if (this.f11795w != null) {
            X(null, true);
            zzcba zzcbaVar = this.f11795w;
            if (zzcbaVar != null) {
                zzcbaVar.B(null);
                this.f11795w.x();
                this.f11795w = null;
            }
            this.A = 1;
            this.f11798z = false;
            this.D = false;
            this.E = false;
        }
    }

    private final void X(Surface surface, boolean z10) {
        zzcba zzcbaVar = this.f11795w;
        if (zzcbaVar == null) {
            zzbza.g("Trying to set surface before player is initialized.");
            return;
        }
        try {
            zzcbaVar.H(surface, z10);
        } catch (IOException e10) {
            zzbza.h(BuildConfig.FLAVOR, e10);
        }
    }

    private final void Y() {
        Z(this.F, this.G);
    }

    private final void Z(int i10, int i11) {
        float f10 = i11 > 0 ? i10 / i11 : 1.0f;
        if (this.H != f10) {
            this.H = f10;
            requestLayout();
        }
    }

    private final boolean a0() {
        return b0() && this.A != 1;
    }

    private final boolean b0() {
        zzcba zzcbaVar = this.f11795w;
        return (zzcbaVar == null || !zzcbaVar.K() || this.f11798z) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void A(int i10) {
        zzcba zzcbaVar = this.f11795w;
        if (zzcbaVar != null) {
            zzcbaVar.C(i10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void B(int i10) {
        zzcba zzcbaVar = this.f11795w;
        if (zzcbaVar != null) {
            zzcbaVar.D(i10);
        }
    }

    final zzcba C() {
        zzcdv zzcdvVar = new zzcdv(this.f11790r.getContext(), this.f11792t, this.f11790r);
        zzbza.f("ExoPlayerAdapter initialized.");
        return zzcdvVar;
    }

    final String D() {
        return com.google.android.gms.ads.internal.zzt.r().B(this.f11790r.getContext(), this.f11790r.k().f11605o);
    }

    final /* synthetic */ void E(String str) {
        zzcao zzcaoVar = this.f11793u;
        if (zzcaoVar != null) {
            zzcaoVar.n("ExoPlayerAdapter error", str);
        }
    }

    final /* synthetic */ void F() {
        zzcao zzcaoVar = this.f11793u;
        if (zzcaoVar != null) {
            zzcaoVar.zza();
        }
    }

    final /* synthetic */ void G() {
        zzcao zzcaoVar = this.f11793u;
        if (zzcaoVar != null) {
            zzcaoVar.c();
        }
    }

    final /* synthetic */ void H(boolean z10, long j10) {
        this.f11790r.Y0(z10, j10);
    }

    final /* synthetic */ void I(String str) {
        zzcao zzcaoVar = this.f11793u;
        if (zzcaoVar != null) {
            zzcaoVar.j1("ExoPlayerAdapter exception", str);
        }
    }

    final /* synthetic */ void J() {
        zzcao zzcaoVar = this.f11793u;
        if (zzcaoVar != null) {
            zzcaoVar.e();
        }
    }

    final /* synthetic */ void K() {
        zzcao zzcaoVar = this.f11793u;
        if (zzcaoVar != null) {
            zzcaoVar.f();
        }
    }

    final /* synthetic */ void L() {
        zzcao zzcaoVar = this.f11793u;
        if (zzcaoVar != null) {
            zzcaoVar.g();
        }
    }

    final /* synthetic */ void M(int i10, int i11) {
        zzcao zzcaoVar = this.f11793u;
        if (zzcaoVar != null) {
            zzcaoVar.a(i10, i11);
        }
    }

    final /* synthetic */ void N() {
        float fA = this.f11674p.a();
        zzcba zzcbaVar = this.f11795w;
        if (zzcbaVar == null) {
            zzbza.g("Trying to set volume before player is initialized.");
            return;
        }
        try {
            zzcbaVar.I(fA, false);
        } catch (IOException e10) {
            zzbza.h(BuildConfig.FLAVOR, e10);
        }
    }

    final /* synthetic */ void O(int i10) {
        zzcao zzcaoVar = this.f11793u;
        if (zzcaoVar != null) {
            zzcaoVar.onWindowVisibilityChanged(i10);
        }
    }

    final /* synthetic */ void P() {
        zzcao zzcaoVar = this.f11793u;
        if (zzcaoVar != null) {
            zzcaoVar.d();
        }
    }

    final /* synthetic */ void Q() {
        zzcao zzcaoVar = this.f11793u;
        if (zzcaoVar != null) {
            zzcaoVar.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaz
    public final void a(String str, Exception exc) {
        final String strR = R("onLoadException", exc);
        zzbza.g("ExoPlayerAdapter exception: ".concat(strR));
        com.google.android.gms.ads.internal.zzt.q().t(exc, "AdExoPlayerView.onException");
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbr
            @Override // java.lang.Runnable
            public final void run() {
                this.f11772o.I(strR);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcaz
    public final void b(final boolean z10, final long j10) {
        if (this.f11790r != null) {
            zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbx
                @Override // java.lang.Runnable
                public final void run() {
                    this.f11779o.H(z10, j10);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void c(int i10) {
        zzcba zzcbaVar = this.f11795w;
        if (zzcbaVar != null) {
            zzcbaVar.G(i10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaz
    public final void d(String str, Exception exc) {
        final String strR = R(str, exc);
        zzbza.g("ExoPlayerAdapter error: ".concat(strR));
        this.f11798z = true;
        if (this.f11792t.f11726a) {
            V();
        }
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbo
            @Override // java.lang.Runnable
            public final void run() {
                this.f11766o.E(strR);
            }
        });
        com.google.android.gms.ads.internal.zzt.q().t(exc, "AdExoPlayerView.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzcaz
    public final void e(int i10, int i11) {
        this.F = i10;
        this.G = i11;
        Y();
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void f(String str, String[] strArr) {
        if (str == null) {
            return;
        }
        if (strArr == null) {
            this.f11797y = new String[]{str};
        } else {
            this.f11797y = (String[]) Arrays.copyOf(strArr, strArr.length);
        }
        String str2 = this.f11796x;
        boolean z10 = this.f11792t.f11737l && str2 != null && !str.equals(str2) && this.A == 4;
        this.f11796x = str;
        U(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final int g() {
        if (a0()) {
            return (int) this.f11795w.S();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final int h() {
        zzcba zzcbaVar = this.f11795w;
        if (zzcbaVar != null) {
            return zzcbaVar.L();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final int i() {
        if (a0()) {
            return (int) this.f11795w.T();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final int j() {
        return this.G;
    }

    @Override // com.google.android.gms.internal.ads.zzcap, com.google.android.gms.internal.ads.zzcbm
    public final void k() {
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbs
            @Override // java.lang.Runnable
            public final void run() {
                this.f11774o.N();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final int l() {
        return this.F;
    }

    @Override // com.google.android.gms.internal.ads.zzcaz
    public final void l0(int i10) {
        if (this.A != i10) {
            this.A = i10;
            if (i10 == 3) {
                T();
                return;
            }
            if (i10 != 4) {
                return;
            }
            if (this.f11792t.f11726a) {
                V();
            }
            this.f11791s.e();
            this.f11674p.c();
            com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbu
                @Override // java.lang.Runnable
                public final void run() {
                    this.f11776o.F();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final long m() {
        zzcba zzcbaVar = this.f11795w;
        if (zzcbaVar != null) {
            return zzcbaVar.R();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final long n() {
        zzcba zzcbaVar = this.f11795w;
        if (zzcbaVar != null) {
            return zzcbaVar.r();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final long o() {
        zzcba zzcbaVar = this.f11795w;
        if (zzcbaVar != null) {
            return zzcbaVar.s();
        }
        return -1L;
    }

    @Override // android.view.View
    protected final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f10 = this.H;
        if (f10 != 0.0f && this.B == null) {
            float f11 = measuredWidth;
            float f12 = f11 / measuredHeight;
            if (f10 > f12) {
                measuredHeight = (int) (f11 / f10);
            }
            if (f10 < f12) {
                measuredWidth = (int) (measuredHeight * f10);
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        zzcbh zzcbhVar = this.B;
        if (zzcbhVar != null) {
            zzcbhVar.b(measuredWidth, measuredHeight);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        if (this.C) {
            zzcbh zzcbhVar = new zzcbh(getContext());
            this.B = zzcbhVar;
            zzcbhVar.c(surfaceTexture, i10, i11);
            this.B.start();
            SurfaceTexture surfaceTextureA = this.B.a();
            if (surfaceTextureA != null) {
                surfaceTexture = surfaceTextureA;
            } else {
                this.B.d();
                this.B = null;
            }
        }
        Surface surface = new Surface(surfaceTexture);
        this.f11794v = surface;
        if (this.f11795w == null) {
            U(false);
        } else {
            X(surface, true);
            if (!this.f11792t.f11726a) {
                S();
            }
        }
        if (this.F == 0 || this.G == 0) {
            Z(i10, i11);
        } else {
            Y();
        }
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbv
            @Override // java.lang.Runnable
            public final void run() {
                this.f11777o.K();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        q();
        zzcbh zzcbhVar = this.B;
        if (zzcbhVar != null) {
            zzcbhVar.d();
            this.B = null;
        }
        if (this.f11795w != null) {
            V();
            Surface surface = this.f11794v;
            if (surface != null) {
                surface.release();
            }
            this.f11794v = null;
            X(null, true);
        }
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbz
            @Override // java.lang.Runnable
            public final void run() {
                this.f11784o.L();
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i10, final int i11) {
        zzcbh zzcbhVar = this.B;
        if (zzcbhVar != null) {
            zzcbhVar.b(i10, i11);
        }
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbp
            @Override // java.lang.Runnable
            public final void run() {
                this.f11768o.M(i10, i11);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f11791s.f(this);
        this.f11673o.a(surfaceTexture, this.f11793u);
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i10) {
        com.google.android.gms.ads.internal.util.zze.k("AdExoPlayerView3 window visibility changed to " + i10);
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcby
            @Override // java.lang.Runnable
            public final void run() {
                this.f11782o.O(i10);
            }
        });
        super.onWindowVisibilityChanged(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final String p() {
        return "ExoPlayer/2".concat(true != this.C ? BuildConfig.FLAVOR : " spherical");
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void q() {
        if (a0()) {
            if (this.f11792t.f11726a) {
                V();
            }
            this.f11795w.E(false);
            this.f11791s.e();
            this.f11674p.c();
            com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbt
                @Override // java.lang.Runnable
                public final void run() {
                    this.f11775o.P();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void r() {
        if (!a0()) {
            this.E = true;
            return;
        }
        if (this.f11792t.f11726a) {
            S();
        }
        this.f11795w.E(true);
        this.f11791s.c();
        this.f11674p.b();
        this.f11673o.b();
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbq
            @Override // java.lang.Runnable
            public final void run() {
                this.f11771o.Q();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void s(int i10) {
        if (a0()) {
            this.f11795w.y(i10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaz
    public final void t() {
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcca
            @Override // java.lang.Runnable
            public final void run() {
                this.f11789o.J();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void u(zzcao zzcaoVar) {
        this.f11793u = zzcaoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void v(String str) {
        if (str != null) {
            f(str, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void w() {
        if (b0()) {
            this.f11795w.J();
            W();
        }
        this.f11791s.e();
        this.f11674p.c();
        this.f11791s.d();
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void x(float f10, float f11) {
        zzcbh zzcbhVar = this.B;
        if (zzcbhVar != null) {
            zzcbhVar.e(f10, f11);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void y(int i10) {
        zzcba zzcbaVar = this.f11795w;
        if (zzcbaVar != null) {
            zzcbaVar.z(i10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void z(int i10) {
        zzcba zzcbaVar = this.f11795w;
        if (zzcbaVar != null) {
            zzcbaVar.A(i10);
        }
    }
}
