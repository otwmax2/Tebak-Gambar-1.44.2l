package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzccd implements zzfg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f11799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfg f11800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f11801c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f11802d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private InputStream f11804f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f11805g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Uri f11806h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile zzavq f11807i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private zzfl f11811m;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f11808j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f11809k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final AtomicLong f11810l = new AtomicLong(-1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f11803e = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G1)).booleanValue();

    public zzccd(Context context, zzfg zzfgVar, String str, int i10, zzgi zzgiVar, zzccc zzcccVar) {
        this.f11799a = context;
        this.f11800b = zzfgVar;
        this.f11801c = str;
        this.f11802d = i10;
    }

    private final boolean n() {
        if (!this.f11803e) {
            return false;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.T3)).booleanValue() || this.f11808j) {
            return ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.U3)).booleanValue() && !this.f11809k;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Uri a() {
        return this.f11806h;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final /* synthetic */ Map b() {
        return Collections.emptyMap();
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void d() throws IOException {
        if (!this.f11805g) {
            throw new IOException("Attempt to close an already closed CacheDataSource.");
        }
        this.f11805g = false;
        this.f11806h = null;
        InputStream inputStream = this.f11804f;
        if (inputStream == null) {
            this.f11800b.d();
        } else {
            IOUtils.b(inputStream);
            this.f11804f = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.f11805g) {
            throw new IOException("Attempt to read closed CacheDataSource.");
        }
        InputStream inputStream = this.f11804f;
        return inputStream != null ? inputStream.read(bArr, i10, i11) : this.f11800b.e(bArr, i10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void f(zzgi zzgiVar) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzfg
    public final long j(zzfl zzflVar) throws IOException {
        Long l10;
        if (this.f11805g) {
            throw new IOException("Attempt to open an already open CacheDataSource.");
        }
        this.f11805g = true;
        Uri uri = zzflVar.f18368a;
        this.f11806h = uri;
        this.f11811m = zzflVar;
        this.f11807i = zzavq.V3(uri);
        zzavn zzavnVarB = null;
        Object[] objArr = 0;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Q3)).booleanValue()) {
            if (this.f11807i != null) {
                this.f11807i.f10031v = zzflVar.f18373f;
                this.f11807i.f10032w = zzfoj.c(this.f11801c);
                this.f11807i.f10033x = this.f11802d;
                zzavnVarB = com.google.android.gms.ads.internal.zzt.e().b(this.f11807i);
            }
            if (zzavnVarB != null && zzavnVarB.b()) {
                this.f11808j = zzavnVarB.e();
                this.f11809k = zzavnVarB.Y3();
                if (!n()) {
                    this.f11804f = zzavnVarB.X3();
                    return -1L;
                }
            }
        } else if (this.f11807i != null) {
            this.f11807i.f10031v = zzflVar.f18373f;
            this.f11807i.f10032w = zzfoj.c(this.f11801c);
            this.f11807i.f10033x = this.f11802d;
            if (this.f11807i.f10030u) {
                l10 = (Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S3);
            } else {
                l10 = (Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.R3);
            }
            long jLongValue = l10.longValue();
            com.google.android.gms.ads.internal.zzt.b().b();
            com.google.android.gms.ads.internal.zzt.f();
            Future futureA = zzawb.a(this.f11799a, this.f11807i);
            try {
                zzawc zzawcVar = (zzawc) futureA.get(jLongValue, TimeUnit.MILLISECONDS);
                zzawcVar.d();
                this.f11808j = zzawcVar.f();
                this.f11809k = zzawcVar.e();
                zzawcVar.a();
                if (n()) {
                    com.google.android.gms.ads.internal.zzt.b().b();
                    throw null;
                }
                this.f11804f = zzawcVar.c();
                com.google.android.gms.ads.internal.zzt.b().b();
                throw null;
            } catch (InterruptedException unused) {
                futureA.cancel(false);
                Thread.currentThread().interrupt();
                com.google.android.gms.ads.internal.zzt.b().b();
                throw null;
            } catch (ExecutionException | TimeoutException unused2) {
                futureA.cancel(false);
                com.google.android.gms.ads.internal.zzt.b().b();
                throw null;
            }
        }
        if (this.f11807i != null) {
            this.f11811m = new zzfl(Uri.parse(this.f11807i.f10024o), null, zzflVar.f18372e, zzflVar.f18373f, zzflVar.f18374g, null, zzflVar.f18376i);
        }
        return this.f11800b.j(this.f11811m);
    }
}
