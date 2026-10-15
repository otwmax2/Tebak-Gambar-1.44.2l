package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzit;
import com.google.android.gms.internal.drive.zziu;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zziu<MessageType extends zzit<MessageType, BuilderType>, BuilderType extends zziu<MessageType, BuilderType>> implements zzlr {
    @Override // com.google.android.gms.internal.drive.zzlr
    public final /* synthetic */ zzlr X(zzlq zzlqVar) {
        if (a().getClass().isInstance(zzlqVar)) {
            return h((zzit) zzlqVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    protected abstract BuilderType h(MessageType messagetype);

    @Override // 
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType clone();
}
