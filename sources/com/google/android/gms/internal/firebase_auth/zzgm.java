package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzgm;
import com.google.android.gms.internal.firebase_auth.zzgn;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgm<MessageType extends zzgn<MessageType, BuilderType>, BuilderType extends zzgm<MessageType, BuilderType>> implements zzjq {
    @Override // 
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType clone();

    protected abstract BuilderType g(MessageType messagetype);

    @Override // com.google.android.gms.internal.firebase_auth.zzjq
    public final /* synthetic */ zzjq q1(zzjn zzjnVar) {
        if (a().getClass().isInstance(zzjnVar)) {
            return g((zzgn) zzjnVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
