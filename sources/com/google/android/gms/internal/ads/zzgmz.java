package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgmz implements zzfvv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ECPrivateKey f19294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgnb f19295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f19296c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f19297d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgmy f19298e;

    public zzgmz(ECPrivateKey eCPrivateKey, byte[] bArr, String str, int i10, zzgmy zzgmyVar) throws GeneralSecurityException {
        this.f19294a = eCPrivateKey;
        this.f19295b = new zzgnb(eCPrivateKey);
        this.f19297d = bArr;
        this.f19296c = str;
        this.f19298e = zzgmyVar;
    }
}
