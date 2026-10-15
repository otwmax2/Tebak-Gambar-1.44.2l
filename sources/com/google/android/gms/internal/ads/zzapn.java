package com.google.android.gms.internal.ads;

import java.io.File;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzapn implements zzfjk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzfhk f9670a;

    zzapn(zzapp zzappVar, zzfhk zzfhkVar) {
        this.f9670a = zzfhkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfjk
    public final boolean a(File file) {
        try {
            return this.f9670a.a(file);
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }
}
