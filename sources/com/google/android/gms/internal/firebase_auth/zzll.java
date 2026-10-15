package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzll extends IllegalArgumentException {
    zzll(int i10, int i11) {
        StringBuilder sb = new StringBuilder(54);
        sb.append("Unpaired surrogate at index ");
        sb.append(i10);
        sb.append(" of ");
        sb.append(i11);
        super(sb.toString());
    }
}
