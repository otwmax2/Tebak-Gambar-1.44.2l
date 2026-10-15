package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgg extends zzfa {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Resources f19165e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f19166f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Uri f19167g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AssetFileDescriptor f19168h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private InputStream f19169i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f19170j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f19171k;

    public zzgg(Context context) {
        super(false);
        this.f19165e = context.getResources();
        this.f19166f = context.getPackageName();
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Uri a() {
        return this.f19167g;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void d() throws zzgf {
        this.f19167g = null;
        try {
            try {
                InputStream inputStream = this.f19169i;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f19169i = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f19168h;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } finally {
                        this.f19168h = null;
                        if (this.f19171k) {
                            this.f19171k = false;
                            n();
                        }
                    }
                } catch (IOException e10) {
                    throw new zzgf(null, e10, 2000);
                }
            } catch (IOException e11) {
                throw new zzgf(null, e11, 2000);
            }
        } catch (Throwable th) {
            this.f19169i = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f19168h;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f19168h = null;
                    if (this.f19171k) {
                        this.f19171k = false;
                        n();
                    }
                    throw th;
                } catch (IOException e12) {
                    throw new zzgf(null, e12, 2000);
                }
            } catch (Throwable th2) {
                this.f19168h = null;
                if (this.f19171k) {
                    this.f19171k = false;
                    n();
                }
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) throws zzgf {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f19170j;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e10) {
                throw new zzgf(null, e10, 2000);
            }
        }
        InputStream inputStream = this.f19169i;
        int i12 = zzew.f17494a;
        int i13 = inputStream.read(bArr, i10, i11);
        if (i13 == -1) {
            if (this.f19170j == -1) {
                return -1;
            }
            throw new zzgf("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j11 = this.f19170j;
        if (j11 != -1) {
            this.f19170j = j11 - ((long) i13);
        }
        w(i13);
        return i13;
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzfg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long j(com.google.android.gms.internal.ads.zzfl r15) throws com.google.android.gms.internal.ads.zzgf {
        /*
            Method dump skipped, instruction units count: 364
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgg.j(com.google.android.gms.internal.ads.zzfl):long");
    }
}
