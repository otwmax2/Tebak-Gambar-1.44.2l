package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfw extends zzfa {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RandomAccessFile f18766e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Uri f18767f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f18768g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f18769h;

    public zzfw() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Uri a() {
        return this.f18767f;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void d() throws zzfv {
        this.f18767f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f18766e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f18766e = null;
                if (this.f18769h) {
                    this.f18769h = false;
                    n();
                }
            } catch (IOException e10) {
                throw new zzfv(e10, 2000);
            }
        } catch (Throwable th) {
            this.f18766e = null;
            if (this.f18769h) {
                this.f18769h = false;
                n();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) throws zzfv {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f18768g;
        if (j10 == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.f18766e;
            int i12 = zzew.f17494a;
            int i13 = randomAccessFile.read(bArr, i10, (int) Math.min(j10, i11));
            if (i13 > 0) {
                this.f18768g -= (long) i13;
                w(i13);
            }
            return i13;
        } catch (IOException e10) {
            throw new zzfv(e10, 2000);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final long j(zzfl zzflVar) throws zzfv {
        Uri uri = zzflVar.f18368a;
        this.f18767f = uri;
        o(zzflVar);
        try {
            String path = uri.getPath();
            Objects.requireNonNull(path);
            RandomAccessFile randomAccessFile = new RandomAccessFile(path, "r");
            this.f18766e = randomAccessFile;
            try {
                randomAccessFile.seek(zzflVar.f18373f);
                long length = zzflVar.f18374g;
                if (length == -1) {
                    length = this.f18766e.length() - zzflVar.f18373f;
                }
                this.f18768g = length;
                if (length < 0) {
                    throw new zzfv(null, null, 2008);
                }
                this.f18769h = true;
                p(zzflVar);
                return this.f18768g;
            } catch (IOException e10) {
                throw new zzfv(e10, 2000);
            }
        } catch (FileNotFoundException e11) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new zzfv(e11, (zzew.f17494a < 21 || !zzfu.b(e11.getCause())) ? 2005 : 2006);
            }
            throw new zzfv(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e11, 1004);
        } catch (SecurityException e12) {
            throw new zzfv(e12, 2006);
        } catch (RuntimeException e13) {
            throw new zzfv(e13, 2000);
        }
    }
}
