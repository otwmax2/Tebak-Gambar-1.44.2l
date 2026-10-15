package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzft extends zzfa implements zzgd {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f18701e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f18702f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f18703g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f18704h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzgc f18705i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzgc f18706j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private zzfl f18707k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private HttpURLConnection f18708l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private InputStream f18709m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f18710n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f18711o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f18712p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f18713q;

    @Deprecated
    public zzft() {
        this(null, 8000, 8000, false, null, null, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.net.HttpURLConnection q(java.net.URL r3, int r4, byte[] r5, long r6, long r8, boolean r10, boolean r11, java.util.Map r12) throws java.io.IOException {
        /*
            r2 = this;
            java.net.URLConnection r3 = r3.openConnection()
            java.net.HttpURLConnection r3 = (java.net.HttpURLConnection) r3
            int r4 = r2.f18702f
            r3.setConnectTimeout(r4)
            int r4 = r2.f18703g
            r3.setReadTimeout(r4)
            java.util.HashMap r4 = new java.util.HashMap
            r4.<init>()
            com.google.android.gms.internal.ads.zzgc r5 = r2.f18705i
            java.util.Map r5 = r5.a()
            r4.putAll(r5)
            com.google.android.gms.internal.ads.zzgc r5 = r2.f18706j
            java.util.Map r5 = r5.a()
            r4.putAll(r5)
            r4.putAll(r12)
            java.util.Set r4 = r4.entrySet()
            java.util.Iterator r4 = r4.iterator()
        L32:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L4e
            java.lang.Object r5 = r4.next()
            java.util.Map$Entry r5 = (java.util.Map.Entry) r5
            java.lang.Object r12 = r5.getKey()
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r5 = r5.getValue()
            java.lang.String r5 = (java.lang.String) r5
            r3.setRequestProperty(r12, r5)
            goto L32
        L4e:
            r4 = 0
            r0 = -1
            int r12 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r12 != 0) goto L5d
            int r6 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r6 != 0) goto L5c
            r4 = 0
            goto L7c
        L5c:
            r6 = r4
        L5d:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "bytes="
            r4.append(r5)
            r4.append(r6)
            java.lang.String r5 = "-"
            r4.append(r5)
            int r5 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r5 == 0) goto L78
            long r6 = r6 + r8
            long r6 = r6 + r0
            r4.append(r6)
        L78:
            java.lang.String r4 = r4.toString()
        L7c:
            if (r4 == 0) goto L83
            java.lang.String r5 = "Range"
            r3.setRequestProperty(r5, r4)
        L83:
            java.lang.String r4 = r2.f18704h
            if (r4 == 0) goto L8c
            java.lang.String r5 = "User-Agent"
            r3.setRequestProperty(r5, r4)
        L8c:
            r4 = 1
            if (r4 == r10) goto L92
            java.lang.String r5 = "identity"
            goto L94
        L92:
            java.lang.String r5 = "gzip"
        L94:
            java.lang.String r6 = "Accept-Encoding"
            r3.setRequestProperty(r6, r5)
            r3.setInstanceFollowRedirects(r11)
            r5 = 0
            r3.setDoOutput(r5)
            java.lang.String r4 = com.google.android.gms.internal.ads.zzfl.a(r4)
            r3.setRequestMethod(r4)
            r3.connect()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzft.q(java.net.URL, int, byte[], long, long, boolean, boolean, java.util.Map):java.net.HttpURLConnection");
    }

    private final URL r(URL url, String str, zzfl zzflVar) throws zzfz {
        if (str == null) {
            throw new zzfz("Null location redirect", zzflVar, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!TournamentShareDialogURIBuilder.scheme.equals(protocol) && !"http".equals(protocol)) {
                throw new zzfz("Unsupported protocol redirect: ".concat(String.valueOf(protocol)), zzflVar, 2001, 1);
            }
            if (this.f18701e || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new zzfz("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", zzflVar, 2001, 1);
        } catch (MalformedURLException e10) {
            throw new zzfz(e10, zzflVar, 2001, 1);
        }
    }

    private final void s() {
        HttpURLConnection httpURLConnection = this.f18708l;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e10) {
                zzee.c("DefaultHttpDataSource", "Unexpected error while disconnecting", e10);
            }
            this.f18708l = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Uri a() {
        HttpURLConnection httpURLConnection = this.f18708l;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zzfa, com.google.android.gms.internal.ads.zzfg
    public final Map b() {
        HttpURLConnection httpURLConnection = this.f18708l;
        return httpURLConnection == null ? zzfqn.d() : new zzfr(httpURLConnection.getHeaderFields());
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004d A[Catch: Exception -> 0x0069, all -> 0x008a, TRY_LEAVE, TryCatch #0 {Exception -> 0x0069, blocks: (B:15:0x001e, B:17:0x0026, B:23:0x0035, B:25:0x0045, B:27:0x004d, B:29:0x0058), top: B:45:0x001e }] */
    @Override // com.google.android.gms.internal.ads.zzfg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void d() throws com.google.android.gms.internal.ads.zzfz {
        /*
            r10 = this;
            r0 = 0
            r1 = 0
            java.io.InputStream r2 = r10.f18709m     // Catch: java.lang.Throwable -> L8a
            if (r2 == 0) goto L7b
            long r3 = r10.f18712p     // Catch: java.lang.Throwable -> L8a
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L10
            r3 = r5
            goto L13
        L10:
            long r7 = r10.f18713q     // Catch: java.lang.Throwable -> L8a
            long r3 = r3 - r7
        L13:
            java.net.HttpURLConnection r7 = r10.f18708l     // Catch: java.lang.Throwable -> L8a
            if (r7 == 0) goto L69
            int r8 = com.google.android.gms.internal.ads.zzew.f17494a     // Catch: java.lang.Throwable -> L8a
            r9 = 20
            if (r8 <= r9) goto L1e
            goto L69
        L1e:
            java.io.InputStream r7 = r7.getInputStream()     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            int r8 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r8 != 0) goto L2e
            int r3 = r7.read()     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            r4 = -1
            if (r3 == r4) goto L69
            goto L35
        L2e:
            r5 = 2048(0x800, double:1.012E-320)
            int r8 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r8 > 0) goto L35
            goto L69
        L35:
            java.lang.Class r3 = r7.getClass()     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"
            boolean r4 = r4.equals(r3)     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            if (r4 != 0) goto L4d
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"
            boolean r3 = r4.equals(r3)     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            if (r3 == 0) goto L69
        L4d:
            java.lang.Class r3 = r7.getClass()     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            java.lang.Class r3 = r3.getSuperclass()     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            java.util.Objects.requireNonNull(r3)
            java.lang.String r4 = "unexpectedEndOfInput"
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            java.lang.reflect.Method r3 = r3.getDeclaredMethod(r4, r5)     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            r4 = 1
            r3.setAccessible(r4)     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            r3.invoke(r7, r4)     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
        L69:
            r2.close()     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8a
            goto L7b
        L6d:
            r2 = move-exception
            com.google.android.gms.internal.ads.zzfz r3 = new com.google.android.gms.internal.ads.zzfz     // Catch: java.lang.Throwable -> L8a
            com.google.android.gms.internal.ads.zzfl r4 = r10.f18707k     // Catch: java.lang.Throwable -> L8a
            int r5 = com.google.android.gms.internal.ads.zzew.f17494a     // Catch: java.lang.Throwable -> L8a
            r5 = 2000(0x7d0, float:2.803E-42)
            r6 = 3
            r3.<init>(r2, r4, r5, r6)     // Catch: java.lang.Throwable -> L8a
            throw r3     // Catch: java.lang.Throwable -> L8a
        L7b:
            r10.f18709m = r0
            r10.s()
            boolean r0 = r10.f18710n
            if (r0 == 0) goto L89
            r10.f18710n = r1
            r10.n()
        L89:
            return
        L8a:
            r2 = move-exception
            r10.f18709m = r0
            r10.s()
            boolean r0 = r10.f18710n
            if (r0 == 0) goto L99
            r10.f18710n = r1
            r10.n()
        L99:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzft.d():void");
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) throws zzfz {
        if (i11 == 0) {
            return 0;
        }
        try {
            long j10 = this.f18712p;
            if (j10 != -1) {
                long j11 = j10 - this.f18713q;
                if (j11 == 0) {
                    return -1;
                }
                i11 = (int) Math.min(i11, j11);
            }
            InputStream inputStream = this.f18709m;
            int i12 = zzew.f17494a;
            int i13 = inputStream.read(bArr, i10, i11);
            if (i13 == -1) {
                return -1;
            }
            this.f18713q += (long) i13;
            w(i13);
            return i13;
        } catch (IOException e10) {
            zzfl zzflVar = this.f18707k;
            int i14 = zzew.f17494a;
            throw zzfz.a(e10, zzflVar, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00b2  */
    @Override // com.google.android.gms.internal.ads.zzfg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long j(com.google.android.gms.internal.ads.zzfl r25) throws com.google.android.gms.internal.ads.zzfz {
        /*
            Method dump skipped, instruction units count: 506
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzft.j(com.google.android.gms.internal.ads.zzfl):long");
    }

    private zzft(String str, int i10, int i11, boolean z10, zzgc zzgcVar, zzfnv zzfnvVar, boolean z11) {
        super(true);
        this.f18704h = str;
        this.f18702f = i10;
        this.f18703g = i11;
        this.f18701e = z10;
        this.f18705i = zzgcVar;
        this.f18706j = new zzgc();
    }
}
