package com.google.android.gms.internal.auth;

import com.google.android.gms.internal.auth.zzeo;
import com.google.android.gms.internal.auth.zzeq;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public class zzeo<MessageType extends zzeq<MessageType, BuilderType>, BuilderType extends zzeo<MessageType, BuilderType>> extends zzdl<MessageType, BuilderType> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final MessageType f21487o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected MessageType f21488p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f21489q = false;

    protected zzeo(MessageType messagetype) {
        this.f21487o = messagetype;
        this.f21488p = (MessageType) messagetype.k(4, null, null);
    }

    private static final void k(MessageType messagetype, MessageType messagetype2) {
        zzfy.a().b(messagetype.getClass()).e(messagetype, messagetype2);
    }

    @Override // com.google.android.gms.internal.auth.zzdl
    protected final /* bridge */ /* synthetic */ zzdl d(zzdm zzdmVar) {
        h((zzeq) zzdmVar);
        return this;
    }

    @Override // com.google.android.gms.internal.auth.zzfr
    public final /* bridge */ /* synthetic */ zzfq f() {
        return this.f21487o;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.auth.zzdl
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final BuilderType clone() {
        BuilderType buildertype = (BuilderType) this.f21487o.k(5, null, null);
        buildertype.h(e());
        return buildertype;
    }

    public final BuilderType h(MessageType messagetype) {
        if (this.f21489q) {
            j();
            this.f21489q = false;
        }
        k(this.f21488p, messagetype);
        return this;
    }

    @Override // com.google.android.gms.internal.auth.zzfp
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public MessageType e() {
        if (this.f21489q) {
            return this.f21488p;
        }
        MessageType messagetype = this.f21488p;
        zzfy.a().b(messagetype.getClass()).b(messagetype);
        this.f21489q = true;
        return this.f21488p;
    }

    protected void j() {
        MessageType messagetype = (MessageType) this.f21488p.k(4, null, null);
        k(messagetype, this.f21488p);
        this.f21488p = messagetype;
    }
}
