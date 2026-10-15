package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.base.zaq;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class s extends zaq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zabi f7138a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    s(zabi zabiVar, Looper looper) {
        super(looper);
        this.f7138a = zabiVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 1) {
            ((r) message.obj).b(this.f7138a);
        } else {
            if (i10 == 2) {
                throw ((RuntimeException) message.obj);
            }
            StringBuilder sb = new StringBuilder(31);
            sb.append("Unknown message id: ");
            sb.append(i10);
            Log.w("GACStateManager", sb.toString());
        }
    }
}
