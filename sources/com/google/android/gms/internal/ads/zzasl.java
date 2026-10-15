package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzasl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaqx f9848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f9849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f9850c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Class[] f9852e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile Method f9851d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CountDownLatch f9853f = new CountDownLatch(1);

    public zzasl(zzaqx zzaqxVar, String str, String str2, Class... clsArr) {
        this.f9848a = zzaqxVar;
        this.f9849b = str;
        this.f9850c = str2;
        this.f9852e = clsArr;
        zzaqxVar.k().submit(new zzask(this));
    }

    static /* bridge */ /* synthetic */ void b(zzasl zzaslVar) {
        CountDownLatch countDownLatch;
        Class clsLoadClass;
        try {
            try {
                zzaqx zzaqxVar = zzaslVar.f9848a;
                clsLoadClass = zzaqxVar.i().loadClass(zzaslVar.c(zzaqxVar.u(), zzaslVar.f9849b));
            } catch (zzaqb | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException unused) {
            }
            if (clsLoadClass == null) {
                countDownLatch = zzaslVar.f9853f;
            } else {
                zzaslVar.f9851d = clsLoadClass.getMethod(zzaslVar.c(zzaslVar.f9848a.u(), zzaslVar.f9850c), zzaslVar.f9852e);
                countDownLatch = zzaslVar.f9851d == null ? zzaslVar.f9853f : zzaslVar.f9853f;
            }
        } catch (NullPointerException unused2) {
            countDownLatch = zzaslVar.f9853f;
        } catch (Throwable th) {
            zzaslVar.f9853f.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }

    private final String c(byte[] bArr, String str) throws zzaqb, UnsupportedEncodingException {
        return new String(this.f9848a.e().b(bArr, str), "UTF-8");
    }

    public final Method a() {
        if (this.f9851d != null) {
            return this.f9851d;
        }
        try {
            if (this.f9853f.await(2L, TimeUnit.SECONDS)) {
                return this.f9851d;
            }
            return null;
        } catch (InterruptedException unused) {
            return null;
        }
    }
}
