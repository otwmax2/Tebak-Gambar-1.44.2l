package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzit;
import com.google.android.gms.internal.drive.zziu;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzit<MessageType extends zzit<MessageType, BuilderType>, BuilderType extends zziu<MessageType, BuilderType>> implements zzlq {
    private static boolean zznf = false;
    protected int zzne = 0;

    @Override // com.google.android.gms.internal.drive.zzlq
    public final zzjc b() {
        try {
            zzjk zzjkVarT = zzjc.t(f());
            d(zzjkVarT.b());
            return zzjkVarT.a();
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

    public final byte[] c() {
        try {
            byte[] bArr = new byte[f()];
            zzjr zzjrVarI = zzjr.I(bArr);
            d(zzjrVarI);
            zzjrVarI.Y();
            return bArr;
        } catch (IOException e10) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 62 + "byte array".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e10);
        }
    }

    int e() {
        throw new UnsupportedOperationException();
    }

    void h(int i10) {
        throw new UnsupportedOperationException();
    }
}
