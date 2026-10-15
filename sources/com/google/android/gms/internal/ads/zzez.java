package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzez extends zzfa {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AssetManager f17747e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Uri f17748f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private InputStream f17749g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f17750h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f17751i;

    public zzez(Context context) {
        super(false);
        this.f17747e = context.getAssets();
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Uri a() {
        return this.f17748f;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void d() throws zzey {
        this.f17748f = null;
        try {
            try {
                InputStream inputStream = this.f17749g;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f17749g = null;
                if (this.f17751i) {
                    this.f17751i = false;
                    n();
                }
            } catch (IOException e10) {
                throw new zzey(e10, 2000);
            }
        } catch (Throwable th) {
            this.f17749g = null;
            if (this.f17751i) {
                this.f17751i = false;
                n();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) throws zzey {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f17750h;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e10) {
                throw new zzey(e10, 2000);
            }
        }
        InputStream inputStream = this.f17749g;
        int i12 = zzew.f17494a;
        int i13 = inputStream.read(bArr, i10, i11);
        if (i13 == -1) {
            return -1;
        }
        long j11 = this.f17750h;
        if (j11 != -1) {
            this.f17750h = j11 - ((long) i13);
        }
        w(i13);
        return i13;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final long j(zzfl zzflVar) throws zzey {
        try {
            Uri uri = zzflVar.f18368a;
            this.f17748f = uri;
            String path = uri.getPath();
            Objects.requireNonNull(path);
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            o(zzflVar);
            InputStream inputStreamOpen = this.f17747e.open(path, 1);
            this.f17749g = inputStreamOpen;
            if (inputStreamOpen.skip(zzflVar.f18373f) < zzflVar.f18373f) {
                throw new zzey(null, 2008);
            }
            long j10 = zzflVar.f18374g;
            if (j10 != -1) {
                this.f17750h = j10;
            } else {
                long jAvailable = this.f17749g.available();
                this.f17750h = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.f17750h = -1L;
                }
            }
            this.f17751i = true;
            p(zzflVar);
            return this.f17750h;
        } catch (zzey e10) {
            throw e10;
        } catch (IOException e11) {
            throw new zzey(e11, true != (e11 instanceof FileNotFoundException) ? 2000 : 2005);
        }
    }
}
