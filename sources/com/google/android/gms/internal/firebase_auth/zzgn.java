package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzgm;
import com.google.android.gms.internal.firebase_auth.zzgn;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgn<MessageType extends zzgn<MessageType, BuilderType>, BuilderType extends zzgm<MessageType, BuilderType>> implements zzjn {
    protected int zza = 0;

    @Override // com.google.android.gms.internal.firebase_auth.zzjn
    public final zzgv C() {
        try {
            zzhd zzhdVarS = zzgv.s(A());
            d(zzhdVarS.b());
            return zzhdVarS.a();
        } catch (IOException e10) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 62 + "ByteString".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e10);
        }
    }

    void f(int i10) {
        throw new UnsupportedOperationException();
    }

    int g() {
        throw new UnsupportedOperationException();
    }
}
