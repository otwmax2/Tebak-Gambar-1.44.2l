package com.google.android.gms.internal.firebase_auth;

import java.io.Serializable;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzan extends zzal implements Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Pattern f22411o;

    @Override // com.google.android.gms.internal.firebase_auth.zzal
    public final zzam a(CharSequence charSequence) {
        return new zzaq(this.f22411o.matcher(charSequence));
    }

    public final String toString() {
        return this.f22411o.toString();
    }
}
