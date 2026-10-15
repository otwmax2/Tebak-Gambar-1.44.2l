package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzik;
import com.google.android.gms.internal.measurement.zzil;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzik<MessageType extends zzil<MessageType, BuilderType>, BuilderType extends zzik<MessageType, BuilderType>> implements zzli {
    @Override // 
    public abstract zzik g();

    protected abstract zzik h(zzil zzilVar);

    public zzik i(byte[] bArr, int i10, int i11) throws zzkm {
        throw null;
    }

    public zzik j(byte[] bArr, int i10, int i11, zzjo zzjoVar) throws zzkm {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzli
    public final /* synthetic */ zzli m1(byte[] bArr) throws zzkm {
        return i(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.measurement.zzli
    public final /* synthetic */ zzli p2(byte[] bArr, zzjo zzjoVar) throws zzkm {
        return j(bArr, 0, bArr.length, zzjoVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzli
    public final /* bridge */ /* synthetic */ zzli z0(zzlj zzljVar) {
        if (a().getClass().isInstance(zzljVar)) {
            return h((zzil) zzljVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
