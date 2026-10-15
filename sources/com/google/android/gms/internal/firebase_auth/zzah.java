package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzah extends zzai {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final char f22408a = '.';

    zzah(char c10) {
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzaf
    public final boolean b(char c10) {
        return c10 == this.f22408a;
    }

    public final String toString() {
        String strD = zzaf.d(this.f22408a);
        StringBuilder sb = new StringBuilder(String.valueOf(strD).length() + 18);
        sb.append("CharMatcher.is('");
        sb.append(strD);
        sb.append("')");
        return sb.toString();
    }
}
