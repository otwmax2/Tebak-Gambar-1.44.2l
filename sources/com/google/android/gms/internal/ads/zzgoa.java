package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Mac;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgoa extends ThreadLocal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzgob f19342a;

    zzgoa(zzgob zzgobVar) {
        this.f19342a = zzgobVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.lang.ThreadLocal
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Mac initialValue() {
        try {
            Mac mac = (Mac) zzgnn.f19318c.a(this.f19342a.f19344b);
            mac.init(this.f19342a.f19345c);
            return mac;
        } catch (GeneralSecurityException e10) {
            throw new IllegalStateException(e10);
        }
    }
}
