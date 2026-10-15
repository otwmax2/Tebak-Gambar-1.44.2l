package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcdy extends zzfa implements zzgd {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final Pattern f11973v = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f11974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f11975f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f11976g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzgc f11977h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private zzfl f11978i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private HttpURLConnection f11979j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Queue f11980k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private InputStream f11981l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f11982m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f11983n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f11984o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f11985p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f11986q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f11987r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f11988s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final long f11989t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final long f11990u;

    zzcdy(String str, zzgi zzgiVar, int i10, int i11, long j10, long j11) {
        super(true);
        zzdl.c(str);
        this.f11976g = str;
        this.f11977h = new zzgc();
        this.f11974e = i10;
        this.f11975f = i11;
        this.f11980k = new ArrayDeque();
        this.f11989t = j10;
        this.f11990u = j11;
        if (zzgiVar != null) {
            f(zzgiVar);
        }
    }

    private final void r() {
        while (!this.f11980k.isEmpty()) {
            try {
                ((HttpURLConnection) this.f11980k.remove()).disconnect();
            } catch (Exception e10) {
                zzbza.e("Unexpected error while disconnecting", e10);
            }
        }
        this.f11979j = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Uri a() {
        HttpURLConnection httpURLConnection = this.f11979j;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zzfa, com.google.android.gms.internal.ads.zzfg
    public final Map b() {
        HttpURLConnection httpURLConnection = this.f11979j;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void d() throws zzfz {
        try {
            InputStream inputStream = this.f11981l;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e10) {
                    throw new zzfz(e10, this.f11978i, 2000, 3);
                }
            }
        } finally {
            this.f11981l = null;
            r();
            if (this.f11982m) {
                this.f11982m = false;
                n();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) throws zzfz {
        if (i11 == 0) {
            return 0;
        }
        try {
            long j10 = this.f11984o;
            long j11 = this.f11985p;
            if (j10 - j11 == 0) {
                return -1;
            }
            long j12 = this.f11986q + j11;
            long j13 = i11;
            long j14 = j12 + j13 + this.f11990u;
            long j15 = this.f11988s;
            long j16 = j15 + 1;
            if (j14 > j16) {
                long j17 = this.f11987r;
                if (j15 < j17) {
                    long jMin = Math.min(j17, Math.max(((this.f11989t + j16) - r3) - 1, (-1) + j16 + j13));
                    q(j16, jMin, 2);
                    this.f11988s = jMin;
                    j15 = jMin;
                }
            }
            int i12 = this.f11981l.read(bArr, i10, (int) Math.min(j13, ((j15 + 1) - this.f11986q) - this.f11985p));
            if (i12 == -1) {
                throw new EOFException();
            }
            this.f11985p += (long) i12;
            w(i12);
            return i12;
        } catch (IOException e10) {
            throw new zzfz(e10, this.f11978i, 2000, 2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final long j(zzfl zzflVar) throws zzfz {
        this.f11978i = zzflVar;
        this.f11985p = 0L;
        long j10 = zzflVar.f18373f;
        long j11 = zzflVar.f18374g;
        long jMin = j11 == -1 ? this.f11989t : Math.min(this.f11989t, j11);
        this.f11986q = j10;
        HttpURLConnection httpURLConnectionQ = q(j10, (jMin + j10) - 1, 1);
        this.f11979j = httpURLConnectionQ;
        String headerField = httpURLConnectionQ.getHeaderField("Content-Range");
        if (!TextUtils.isEmpty(headerField)) {
            Matcher matcher = f11973v.matcher(headerField);
            if (matcher.find()) {
                try {
                    Long.parseLong(matcher.group(1));
                    long j12 = Long.parseLong(matcher.group(2));
                    long j13 = Long.parseLong(matcher.group(3));
                    long j14 = zzflVar.f18374g;
                    if (j14 != -1) {
                        this.f11984o = j14;
                        this.f11987r = Math.max(j12, (this.f11986q + j14) - 1);
                    } else {
                        this.f11984o = j13 - this.f11986q;
                        this.f11987r = j13 - 1;
                    }
                    this.f11988s = j12;
                    this.f11982m = true;
                    p(zzflVar);
                    return this.f11984o;
                } catch (NumberFormatException unused) {
                    zzbza.d("Unexpected Content-Range [" + headerField + "]");
                }
            }
        }
        throw new zzcdw(headerField, zzflVar);
    }

    @VisibleForTesting
    final HttpURLConnection q(long j10, long j11, int i10) throws zzfz {
        String string = this.f11978i.f18368a.toString();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(string).openConnection();
            httpURLConnection.setConnectTimeout(this.f11974e);
            httpURLConnection.setReadTimeout(this.f11975f);
            for (Map.Entry entry : this.f11977h.a().entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            httpURLConnection.setRequestProperty("Range", "bytes=" + j10 + "-" + j11);
            httpURLConnection.setRequestProperty("User-Agent", this.f11976g);
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.connect();
            this.f11980k.add(httpURLConnection);
            String string2 = this.f11978i.f18368a.toString();
            try {
                int responseCode = httpURLConnection.getResponseCode();
                this.f11983n = responseCode;
                if (responseCode < 200 || responseCode > 299) {
                    Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                    r();
                    throw new zzcdx(this.f11983n, headerFields, this.f11978i, i10);
                }
                try {
                    InputStream inputStream = httpURLConnection.getInputStream();
                    if (this.f11981l != null) {
                        inputStream = new SequenceInputStream(this.f11981l, inputStream);
                    }
                    this.f11981l = inputStream;
                    return httpURLConnection;
                } catch (IOException e10) {
                    r();
                    throw new zzfz(e10, this.f11978i, 2000, i10);
                }
            } catch (IOException e11) {
                r();
                throw new zzfz("Unable to connect to ".concat(String.valueOf(string2)), e11, this.f11978i, 2000, i10);
            }
        } catch (IOException e12) {
            throw new zzfz("Unable to connect to ".concat(String.valueOf(string)), e12, this.f11978i, 2000, i10);
        }
    }
}
