package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgwn extends zzgwq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Logger f19703a;

    public zzgwn(String str) {
        this.f19703a = Logger.getLogger(str);
    }

    @Override // com.google.android.gms.internal.ads.zzgwq
    public final void a(String str) {
        this.f19703a.logp(Level.FINE, "com.googlecode.mp4parser.util.JuliLogger", "logDebug", str);
    }
}
