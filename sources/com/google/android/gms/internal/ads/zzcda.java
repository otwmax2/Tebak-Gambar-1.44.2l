package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcda extends zzccu implements zzgi {
    private final int A;
    private boolean B;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f11873r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzcbi f11874s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f11875t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzccz f11876u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzccf f11877v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private ByteBuffer f11878w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f11879x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final Object f11880y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final String f11881z;

    public zzcda(zzcbj zzcbjVar, zzcbi zzcbiVar) {
        super(zzcbjVar);
        this.f11874s = zzcbiVar;
        this.f11876u = new zzccz();
        this.f11877v = new zzccf();
        this.f11880y = new Object();
        this.f11881z = (String) zzfnq.d(zzcbjVar != null ? zzcbjVar.b() : null).b(BuildConfig.FLAVOR);
        this.A = zzcbjVar != null ? zzcbjVar.c() : 0;
    }

    protected static final String B(String str) {
        return "cache:".concat(String.valueOf(zzbyt.j(str)));
    }

    private final void t() {
        int iA = (int) this.f11876u.a();
        int iA2 = (int) this.f11877v.a(this.f11878w);
        int iPosition = this.f11878w.position();
        int iRound = Math.round(iA2 * (iPosition / iA));
        int iM = zzcba.M();
        int iO = zzcba.O();
        String str = this.f11873r;
        m(str, B(str), iPosition, iA, iRound, iA2, iRound > 0, iM, iO);
    }

    public final boolean A() {
        return this.B;
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final void g() {
        this.f11875t = true;
    }

    @Override // com.google.android.gms.internal.ads.zzgi
    public final void h(zzfg zzfgVar, zzfl zzflVar, boolean z10, int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzgi
    public final void k(zzfg zzfgVar, zzfl zzflVar, boolean z10) {
        if (zzfgVar instanceof zzft) {
            this.f11876u.b((zzft) zzfgVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgi
    public final void o(zzfg zzfgVar, zzfl zzflVar, boolean z10) {
    }

    @Override // com.google.android.gms.internal.ads.zzgi
    public final void q(zzfg zzfgVar, zzfl zzflVar, boolean z10) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00a7, code lost:
    
        r21.B = true;
        l(r22, r4, (int) r21.f11877v.a(r21.f11878w));
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d8, code lost:
    
        return true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:? -> B:45:0x0142). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.zzccu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean v(java.lang.String r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 399
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcda.v(java.lang.String):boolean");
    }

    public final String y() {
        return this.f11873r;
    }

    public final ByteBuffer z() {
        synchronized (this.f11880y) {
            ByteBuffer byteBuffer = this.f11878w;
            if (byteBuffer != null && !this.f11879x) {
                byteBuffer.flip();
                this.f11879x = true;
            }
            this.f11875t = true;
        }
        return this.f11878w;
    }
}
