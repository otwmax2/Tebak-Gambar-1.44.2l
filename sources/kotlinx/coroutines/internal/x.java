package kotlinx.coroutines.internal;

import com.vungle.mediation.BuildConfig;
import da.h2;
import da.x0;

/* JADX INFO: compiled from: MainDispatchers.kt */
/* JADX INFO: loaded from: classes2.dex */
final class x extends h2 implements x0 {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Throwable f31788q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final String f31789r;

    public x(Throwable th, String str) {
        this.f31788q = th;
        this.f31789r = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.Void H() {
        /*
            r4 = this;
            java.lang.Throwable r0 = r4.f31788q
            if (r0 == 0) goto L36
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Module with the Main dispatcher had failed to initialize"
            r0.append(r1)
            java.lang.String r1 = r4.f31789r
            if (r1 == 0) goto L25
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = ". "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            if (r1 != 0) goto L27
        L25:
            java.lang.String r1 = ""
        L27:
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.Throwable r2 = r4.f31788q
            r1.<init>(r0, r2)
            throw r1
        L36:
            kotlinx.coroutines.internal.w.d()
            h9.e r0 = new h9.e
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.x.H():java.lang.Void");
    }

    @Override // da.i0
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public Void m(k9.g gVar, Runnable runnable) {
        H();
        throw new h9.e();
    }

    @Override // da.i0
    public boolean o(k9.g gVar) {
        H();
        throw new h9.e();
    }

    @Override // da.h2, da.i0
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Dispatchers.Main[missing");
        if (this.f31788q != null) {
            str = ", cause=" + this.f31788q;
        } else {
            str = BuildConfig.FLAVOR;
        }
        sb.append(str);
        sb.append(']');
        return sb.toString();
    }

    @Override // da.h2
    public h2 x() {
        return this;
    }
}
