package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfoc extends zzfof {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ zzfod f18497u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfoc(zzfod zzfodVar, zzfoh zzfohVar, CharSequence charSequence) {
        super(zzfohVar, charSequence);
        this.f18497u = zzfodVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfof
    public final int d(int i10) {
        return i10;
    }

    @Override // com.google.android.gms.internal.ads.zzfof
    public final int e(int i10) {
        int i11 = i10 + 4000;
        if (i11 < this.f18500q.length()) {
            return i11;
        }
        return -1;
    }
}
