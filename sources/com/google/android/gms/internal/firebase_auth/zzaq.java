package com.google.android.gms.internal.firebase_auth;

import java.util.regex.Matcher;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaq extends zzam {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Matcher f22412a;

    zzaq(Matcher matcher) {
        this.f22412a = (Matcher) zzav.c(matcher);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzam
    public final boolean a(int i10) {
        return this.f22412a.find(i10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzam
    public final int b() {
        return this.f22412a.end();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzam
    public final int c() {
        return this.f22412a.start();
    }
}
