package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzik;
import com.google.android.gms.internal.measurement.zzil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzil<MessageType extends zzil<MessageType, BuilderType>, BuilderType extends zzik<MessageType, BuilderType>> implements zzlj {
    protected int zzb = 0;

    protected static void e(Iterable iterable, List list) {
        zzkk.e(iterable);
        if (iterable instanceof zzkr) {
            List listF = ((zzkr) iterable).f();
            zzkr zzkrVar = (zzkr) list;
            int size = list.size();
            for (Object obj : listF) {
                if (obj == null) {
                    String str = "Element at index " + (zzkrVar.size() - size) + " is null.";
                    int size2 = zzkrVar.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            throw new NullPointerException(str);
                        }
                        zzkrVar.remove(size2);
                    }
                } else if (obj instanceof zzjb) {
                    zzkrVar.I1((zzjb) obj);
                } else {
                    zzkrVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzlq) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
        }
        int size3 = list.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                String str2 = "Element at index " + (list.size() - size3) + " is null.";
                int size4 = list.size();
                while (true) {
                    size4--;
                    if (size4 < size3) {
                        throw new NullPointerException(str2);
                    }
                    list.remove(size4);
                }
            } else {
                list.add(obj2);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final zzjb T() {
        try {
            int iM = M();
            zzjb zzjbVar = zzjb.f23589p;
            byte[] bArr = new byte[iM];
            zzjj zzjjVarC = zzjj.c(bArr);
            d(zzjjVarC);
            zzjjVarC.d();
            return new zziy(bArr);
        } catch (IOException e10) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a ByteString threw an IOException (should never happen).", e10);
        }
    }

    int c() {
        throw null;
    }

    void g(int i10) {
        throw null;
    }

    public final byte[] h() {
        try {
            byte[] bArr = new byte[M()];
            zzjj zzjjVarC = zzjj.c(bArr);
            d(zzjjVarC);
            zzjjVarC.d();
            return bArr;
        } catch (IOException e10) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a byte array threw an IOException (should never happen).", e10);
        }
    }
}
