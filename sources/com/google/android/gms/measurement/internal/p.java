package com.google.android.gms.measurement.internal;

import android.util.Log;
import com.facebook.internal.security.CertificateUtil;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class p implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ int f24241o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f24242p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ Object f24243q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ Object f24244r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ Object f24245s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzey f24246t;

    p(zzey zzeyVar, int i10, String str, Object obj, Object obj2, Object obj3) {
        this.f24246t = zzeyVar;
        this.f24241o = i10;
        this.f24242p = str;
        this.f24243q = obj;
        this.f24244r = obj2;
        this.f24245s = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        x xVarD = this.f24246t.f24394a.D();
        if (!xVarD.i()) {
            Log.println(6, this.f24246t.z(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        zzey zzeyVar = this.f24246t;
        if (zzeyVar.f24634c == 0) {
            if (zzeyVar.f24394a.v().F()) {
                zzey zzeyVar2 = this.f24246t;
                zzeyVar2.f24394a.t();
                zzeyVar2.f24634c = 'C';
            } else {
                zzey zzeyVar3 = this.f24246t;
                zzeyVar3.f24394a.t();
                zzeyVar3.f24634c = 'c';
            }
        }
        zzey zzeyVar4 = this.f24246t;
        if (zzeyVar4.f24635d < 0) {
            zzeyVar4.f24394a.v().l();
            zzeyVar4.f24635d = 61000L;
        }
        char cCharAt = "01VDIWEA?".charAt(this.f24241o);
        zzey zzeyVar5 = this.f24246t;
        String strSubstring = "2" + cCharAt + zzeyVar5.f24634c + zzeyVar5.f24635d + CertificateUtil.DELIMITER + zzey.w(true, this.f24242p, this.f24243q, this.f24244r, this.f24245s);
        if (strSubstring.length() > 1024) {
            strSubstring = this.f24242p.substring(0, 1024);
        }
        zzfl zzflVar = xVarD.f24359d;
        if (zzflVar != null) {
            zzflVar.b(strSubstring, 1L);
        }
    }
}
