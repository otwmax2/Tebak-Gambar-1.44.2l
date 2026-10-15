package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgwf implements zzamb {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final zzgwq f19681x = zzgwq.b(zzgwf.class);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected final String f19682o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private zzamc f19683p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ByteBuffer f19686s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    long f19687t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    zzgwk f19689v;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    long f19688u = -1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private ByteBuffer f19690w = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    boolean f19685r = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f19684q = true;

    protected zzgwf(String str) {
        this.f19682o = str;
    }

    private final synchronized void a() {
        if (this.f19685r) {
            return;
        }
        try {
            zzgwq zzgwqVar = f19681x;
            String str = this.f19682o;
            zzgwqVar.a(str.length() != 0 ? "mem mapping ".concat(str) : new String("mem mapping "));
            this.f19686s = this.f19689v.E3(this.f19687t, this.f19688u);
            this.f19685r = true;
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamb
    public final void b(zzgwk zzgwkVar, ByteBuffer byteBuffer, long j10, zzaly zzalyVar) throws IOException {
        this.f19687t = zzgwkVar.zzb();
        byteBuffer.remaining();
        this.f19688u = j10;
        this.f19689v = zzgwkVar;
        zzgwkVar.D(zzgwkVar.zzb() + j10);
        this.f19685r = false;
        this.f19684q = false;
        e();
    }

    protected abstract void c(ByteBuffer byteBuffer);

    @Override // com.google.android.gms.internal.ads.zzamb
    public final void d(zzamc zzamcVar) {
        this.f19683p = zzamcVar;
    }

    public final synchronized void e() {
        a();
        zzgwq zzgwqVar = f19681x;
        String str = this.f19682o;
        zzgwqVar.a(str.length() != 0 ? "parsing details of ".concat(str) : new String("parsing details of "));
        ByteBuffer byteBuffer = this.f19686s;
        if (byteBuffer != null) {
            this.f19684q = true;
            byteBuffer.rewind();
            c(byteBuffer);
            if (byteBuffer.remaining() > 0) {
                this.f19690w = byteBuffer.slice();
            }
            this.f19686s = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamb
    public final String zza() {
        return this.f19682o;
    }
}
