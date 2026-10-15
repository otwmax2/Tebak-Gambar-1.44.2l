package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPublicKey;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgna implements zzfvw {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final byte[] f19301f = new byte[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgnd f19302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f19303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f19304c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgmy f19305d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f19306e;

    public zzgna(ECPublicKey eCPublicKey, byte[] bArr, String str, int i10, zzgmy zzgmyVar) throws GeneralSecurityException {
        zzgcj.b(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.f19302a = new zzgnd(eCPublicKey);
        this.f19304c = bArr;
        this.f19303b = str;
        this.f19306e = i10;
        this.f19305d = zzgmyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvw
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        zzgnc zzgncVarA = this.f19302a.a(this.f19303b, this.f19304c, bArr2, this.f19305d.zza(), this.f19306e);
        byte[] bArrA = this.f19305d.a0(zzgncVarA.b()).a(bArr, f19301f);
        byte[] bArrA2 = zzgncVarA.a();
        return ByteBuffer.allocate(bArrA2.length + bArrA.length).put(bArrA2).put(bArrA).array();
    }
}
