package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f19332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f19333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19334c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f19335d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f19336e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f19337f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f19338g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f19339h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final MediaCodec.CryptoInfo f19340i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzgn f19341j;

    public zzgo() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f19340i = cryptoInfo;
        this.f19341j = zzew.f17494a >= 24 ? new zzgn(cryptoInfo, null) : null;
    }

    public final MediaCodec.CryptoInfo a() {
        return this.f19340i;
    }

    public final void b(int i10) {
        if (i10 == 0) {
            return;
        }
        if (this.f19335d == null) {
            int[] iArr = new int[1];
            this.f19335d = iArr;
            this.f19340i.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.f19335d;
        iArr2[0] = iArr2[0] + i10;
    }

    public final void c(int i10, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i11, int i12, int i13) {
        this.f19337f = i10;
        this.f19335d = iArr;
        this.f19336e = iArr2;
        this.f19333b = bArr;
        this.f19332a = bArr2;
        this.f19334c = i11;
        this.f19338g = i12;
        this.f19339h = i13;
        MediaCodec.CryptoInfo cryptoInfo = this.f19340i;
        cryptoInfo.numSubSamples = i10;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i11;
        if (zzew.f17494a >= 24) {
            zzgn zzgnVar = this.f19341j;
            Objects.requireNonNull(zzgnVar);
            zzgn.a(zzgnVar, i12, i13);
        }
    }
}
