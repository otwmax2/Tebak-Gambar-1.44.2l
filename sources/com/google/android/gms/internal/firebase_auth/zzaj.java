package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaj extends zzak {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final zzaj f22409b = new zzaj();

    private zzaj() {
        super("CharMatcher.none()");
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzaf
    public final int a(CharSequence charSequence, int i10) {
        zzav.b(i10, charSequence.length(), "index");
        return -1;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzaf
    public final boolean b(char c10) {
        return false;
    }
}
