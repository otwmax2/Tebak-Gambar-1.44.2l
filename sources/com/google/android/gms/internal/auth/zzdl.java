package com.google.android.gms.internal.auth;

import com.google.android.gms.internal.auth.zzdl;
import com.google.android.gms.internal.auth.zzdm;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzdl<MessageType extends zzdm<MessageType, BuilderType>, BuilderType extends zzdl<MessageType, BuilderType>> implements zzfp {
    @Override // com.google.android.gms.internal.auth.zzfp
    public final /* bridge */ /* synthetic */ zzfp F2(zzfq zzfqVar) {
        if (f().getClass().isInstance(zzfqVar)) {
            return d((zzdm) zzfqVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    @Override // 
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType clone();

    protected abstract BuilderType d(MessageType messagetype);
}
