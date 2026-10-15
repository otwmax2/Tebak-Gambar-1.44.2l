package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfng implements zzfnv {
    protected zzfng() {
    }

    public static zzfng c(char c10) {
        return new zzfnd(c10);
    }

    @Override // com.google.android.gms.internal.ads.zzfnv
    @Deprecated
    public final /* synthetic */ boolean a(Object obj) {
        return b(((Character) obj).charValue());
    }

    public abstract boolean b(char c10);
}
