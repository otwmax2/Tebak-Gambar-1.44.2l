package com.google.android.gms.internal.common;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzt extends zzw {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final /* synthetic */ zzu f21696v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzt(zzu zzuVar, zzx zzxVar, CharSequence charSequence) {
        super(zzxVar, charSequence);
        this.f21696v = zzuVar;
    }

    @Override // com.google.android.gms.internal.common.zzw
    final int d(int i10) {
        return i10 + 1;
    }

    @Override // com.google.android.gms.internal.common.zzw
    final int e(int i10) {
        zzo zzoVar = this.f21696v.f21697a;
        CharSequence charSequence = this.f21700q;
        int length = charSequence.length();
        zzs.b(i10, length, "index");
        while (i10 < length) {
            if (zzoVar.a(charSequence.charAt(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }
}
