package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgom;
import com.google.android.gms.internal.ads.zzgon;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgon<MessageType extends zzgon<MessageType, BuilderType>, BuilderType extends zzgom<MessageType, BuilderType>> implements zzgrw {
    protected int zza = 0;

    /* JADX WARN: Multi-variable type inference failed */
    protected static void e(Iterable iterable, List list) {
        zzgqw.e(iterable);
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(list.size() + iterable.size());
        }
        int size = list.size();
        for (Object obj : iterable) {
            if (obj == null) {
                String str = "Element at index " + (list.size() - size) + " is null.";
                int size2 = list.size();
                while (true) {
                    size2--;
                    if (size2 < size) {
                        throw new NullPointerException(str);
                    }
                    list.remove(size2);
                }
            } else {
                list.add(obj);
            }
        }
    }

    int c(zzgsp zzgspVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgrw
    public final zzgpe d() {
        try {
            int iU = U();
            zzgpe zzgpeVar = zzgpe.f19379p;
            byte[] bArr = new byte[iU];
            zzgpt zzgptVarH = zzgpt.h(bArr);
            b(zzgptVarH);
            zzgptVarH.j();
            return new zzgpa(bArr);
        } catch (IOException e10) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a ByteString threw an IOException (should never happen).", e10);
        }
    }

    public final void f(OutputStream outputStream) throws IOException {
        zzgpt zzgptVarI = zzgpt.i(outputStream, zzgpt.c(U()));
        b(zzgptVarI);
        zzgptVarI.m();
    }

    @Override // com.google.android.gms.internal.ads.zzgrw
    public final byte[] t() {
        try {
            byte[] bArr = new byte[U()];
            zzgpt zzgptVarH = zzgpt.h(bArr);
            b(zzgptVarH);
            zzgptVarH.j();
            return bArr;
        } catch (IOException e10) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a byte array threw an IOException (should never happen).", e10);
        }
    }
}
