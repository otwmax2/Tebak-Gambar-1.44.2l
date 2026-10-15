package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfkm extends zzfka {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzfok<Integer> f18346o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private zzfok<Integer> f18347p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzfkl f18348q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private HttpURLConnection f18349r;

    zzfkm() {
        this(new zzfok() { // from class: com.google.android.gms.internal.ads.zzfkj
            @Override // com.google.android.gms.internal.ads.zzfok
            public final Object zza() {
                return zzfkm.e();
            }
        }, new zzfok() { // from class: com.google.android.gms.internal.ads.zzfkk
            @Override // com.google.android.gms.internal.ads.zzfok
            public final Object zza() {
                return zzfkm.f();
            }
        }, null);
    }

    zzfkm(zzfok<Integer> zzfokVar, zzfok<Integer> zzfokVar2, zzfkl zzfklVar) {
        this.f18346o = zzfokVar;
        this.f18347p = zzfokVar2;
        this.f18348q = zzfklVar;
    }

    static /* synthetic */ Integer e() {
        return -1;
    }

    static /* synthetic */ Integer f() {
        return -1;
    }

    public static void p(HttpURLConnection httpURLConnection) {
        zzfkb.a();
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        p(this.f18349r);
    }

    public HttpURLConnection l() throws IOException {
        zzfkb.b(((Integer) this.f18346o.zza()).intValue(), ((Integer) this.f18347p.zza()).intValue());
        zzfkl zzfklVar = this.f18348q;
        Objects.requireNonNull(zzfklVar);
        HttpURLConnection httpURLConnection = (HttpURLConnection) zzfklVar.zza();
        this.f18349r = httpURLConnection;
        return httpURLConnection;
    }

    public HttpURLConnection m(zzfkl zzfklVar, final int i10, final int i11) throws IOException {
        this.f18346o = new zzfok() { // from class: com.google.android.gms.internal.ads.zzfkc
            @Override // com.google.android.gms.internal.ads.zzfok
            public final Object zza() {
                return Integer.valueOf(i10);
            }
        };
        this.f18347p = new zzfok() { // from class: com.google.android.gms.internal.ads.zzfkd
            @Override // com.google.android.gms.internal.ads.zzfok
            public final Object zza() {
                return Integer.valueOf(i11);
            }
        };
        this.f18348q = zzfklVar;
        return l();
    }
}
