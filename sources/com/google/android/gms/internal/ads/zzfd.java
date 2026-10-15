package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfd extends zzfa {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ContentResolver f17928e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Uri f17929f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AssetFileDescriptor f17930g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private FileInputStream f17931h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f17932i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f17933j;

    public zzfd(Context context) {
        super(false);
        this.f17928e = context.getContentResolver();
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Uri a() {
        return this.f17929f;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void d() throws zzfc {
        this.f17929f = null;
        try {
            try {
                FileInputStream fileInputStream = this.f17931h;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f17931h = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f17930g;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } finally {
                        this.f17930g = null;
                        if (this.f17933j) {
                            this.f17933j = false;
                            n();
                        }
                    }
                } catch (IOException e10) {
                    throw new zzfc(e10, 2000);
                }
            } catch (IOException e11) {
                throw new zzfc(e11, 2000);
            }
        } catch (Throwable th) {
            this.f17931h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f17930g;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f17930g = null;
                    if (this.f17933j) {
                        this.f17933j = false;
                        n();
                    }
                    throw th;
                } catch (IOException e12) {
                    throw new zzfc(e12, 2000);
                }
            } catch (Throwable th2) {
                this.f17930g = null;
                if (this.f17933j) {
                    this.f17933j = false;
                    n();
                }
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) throws zzfc {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f17932i;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e10) {
                throw new zzfc(e10, 2000);
            }
        }
        FileInputStream fileInputStream = this.f17931h;
        int i12 = zzew.f17494a;
        int i13 = fileInputStream.read(bArr, i10, i11);
        if (i13 == -1) {
            return -1;
        }
        long j11 = this.f17932i;
        if (j11 != -1) {
            this.f17932i = j11 - ((long) i13);
        }
        w(i13);
        return i13;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final long j(zzfl zzflVar) throws zzfc {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        long jPosition;
        try {
            Uri uri = zzflVar.f18368a;
            this.f17929f = uri;
            o(zzflVar);
            if ("content".equals(zzflVar.f18368a.getScheme())) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                assetFileDescriptorOpenAssetFileDescriptor = this.f17928e.openTypedAssetFileDescriptor(uri, "*/*", bundle);
            } else {
                assetFileDescriptorOpenAssetFileDescriptor = this.f17928e.openAssetFileDescriptor(uri, "r");
            }
            this.f17930g = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                throw new zzfc(new IOException("Could not open file descriptor for: " + String.valueOf(uri)), 2000);
            }
            long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
            this.f17931h = fileInputStream;
            if (length != -1 && zzflVar.f18373f > length) {
                throw new zzfc(null, 2008);
            }
            long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
            long jSkip = fileInputStream.skip(zzflVar.f18373f + startOffset) - startOffset;
            if (jSkip != zzflVar.f18373f) {
                throw new zzfc(null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                long size = channel.size();
                if (size == 0) {
                    this.f17932i = -1L;
                    jPosition = -1;
                } else {
                    jPosition = size - channel.position();
                    this.f17932i = jPosition;
                    if (jPosition < 0) {
                        throw new zzfc(null, 2008);
                    }
                }
            } else {
                long j10 = length - jSkip;
                this.f17932i = j10;
                if (j10 < 0) {
                    throw new zzfc(null, 2008);
                }
                jPosition = j10;
            }
            long jMin = zzflVar.f18374g;
            if (jMin != -1) {
                if (jPosition != -1) {
                    jMin = Math.min(jPosition, jMin);
                }
                this.f17932i = jMin;
            }
            this.f17933j = true;
            p(zzflVar);
            long j11 = zzflVar.f18374g;
            return j11 != -1 ? j11 : this.f17932i;
        } catch (zzfc e10) {
            throw e10;
        } catch (IOException e11) {
            throw new zzfc(e11, true == (e11 instanceof FileNotFoundException) ? 2005 : 2000);
        }
    }
}
