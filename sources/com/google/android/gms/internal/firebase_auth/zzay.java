package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzay extends zzbb {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final /* synthetic */ zzam f22421v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzay(zzaz zzazVar, zzau zzauVar, CharSequence charSequence, zzam zzamVar) {
        super(zzauVar, charSequence);
        this.f22421v = zzamVar;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbb
    public final int d(int i10) {
        if (this.f22421v.a(i10)) {
            return this.f22421v.c();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbb
    public final int e(int i10) {
        return this.f22421v.b();
    }
}
