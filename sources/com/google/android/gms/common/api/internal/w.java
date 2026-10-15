package com.google.android.gms.common.api.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class w implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ x f7150o;

    w(x xVar) {
        this.f7150o = xVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zabq zabqVar = this.f7150o.f7151a;
        zabqVar.f7220p.e(zabqVar.f7220p.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
