package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Base64;
import java.io.IOException;
import java.net.URLDecoder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfe extends zzfa {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzfl f17982e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte[] f17983f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f17984g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f17985h;

    public zzfe() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Uri a() {
        zzfl zzflVar = this.f17982e;
        if (zzflVar != null) {
            return zzflVar.f18368a;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void d() {
        if (this.f17983f != null) {
            this.f17983f = null;
            n();
        }
        this.f17982e = null;
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.f17985h;
        if (i12 == 0) {
            return -1;
        }
        int iMin = Math.min(i11, i12);
        System.arraycopy(zzew.h(this.f17983f), this.f17984g, bArr, i10, iMin);
        this.f17984g += iMin;
        this.f17985h -= iMin;
        w(iMin);
        return iMin;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final long j(zzfl zzflVar) throws IOException {
        o(zzflVar);
        this.f17982e = zzflVar;
        Uri uri = zzflVar.f18368a;
        String scheme = uri.getScheme();
        zzdl.e("data".equals(scheme), "Unsupported scheme: ".concat(String.valueOf(scheme)));
        String[] strArrI = zzew.I(uri.getSchemeSpecificPart(), ",");
        if (strArrI.length != 2) {
            throw zzbu.b("Unexpected URI format: ".concat(String.valueOf(uri)), null);
        }
        String str = strArrI[1];
        if (strArrI[0].contains(";base64")) {
            try {
                this.f17983f = Base64.decode(str, 0);
            } catch (IllegalArgumentException e10) {
                throw zzbu.b("Error while parsing Base64 encoded string: ".concat(String.valueOf(str)), e10);
            }
        } else {
            this.f17983f = zzew.C(URLDecoder.decode(str, zzfnh.f18474a.name()));
        }
        long j10 = zzflVar.f18373f;
        int length = this.f17983f.length;
        if (j10 > length) {
            this.f17983f = null;
            throw new zzfh(2008);
        }
        int i10 = (int) j10;
        this.f17984g = i10;
        int i11 = length - i10;
        this.f17985h = i11;
        long j11 = zzflVar.f18374g;
        if (j11 != -1) {
            this.f17985h = (int) Math.min(i11, j11);
        }
        p(zzflVar);
        long j12 = zzflVar.f18374g;
        return j12 != -1 ? j12 : this.f17985h;
    }
}
