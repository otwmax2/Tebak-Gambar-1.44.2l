package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Message;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzer implements zzdu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Message f17223a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzes f17224b;

    private zzer() {
    }

    /* synthetic */ zzer(zzeq zzeqVar) {
    }

    private final void c() {
        this.f17223a = null;
        this.f17224b = null;
        zzes.a(this);
    }

    public final zzer a(Message message, zzes zzesVar) {
        this.f17223a = message;
        this.f17224b = zzesVar;
        return this;
    }

    public final boolean b(Handler handler) {
        Message message = this.f17223a;
        Objects.requireNonNull(message);
        boolean zSendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue(message);
        c();
        return zSendMessageAtFrontOfQueue;
    }

    @Override // com.google.android.gms.internal.ads.zzdu
    public final void zza() {
        Message message = this.f17223a;
        Objects.requireNonNull(message);
        message.sendToTarget();
        c();
    }
}
