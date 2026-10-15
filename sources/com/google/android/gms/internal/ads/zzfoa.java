package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfoa extends zzfof {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ zzfob f18495u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfoa(zzfob zzfobVar, zzfoh zzfohVar, CharSequence charSequence) {
        super(zzfohVar, charSequence);
        this.f18495u = zzfobVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfof
    final int d(int i10) {
        return i10 + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzfof
    final int e(int i10) {
        zzfng zzfngVar = this.f18495u.f18496a;
        CharSequence charSequence = this.f18500q;
        int length = charSequence.length();
        zzfnu.b(i10, length, "index");
        while (i10 < length) {
            if (zzfngVar.b(charSequence.charAt(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }
}
