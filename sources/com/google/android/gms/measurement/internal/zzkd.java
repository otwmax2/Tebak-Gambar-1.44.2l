package com.google.android.gms.measurement.internal;

import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.measurement.zzne;
import com.vungle.mediation.BuildConfig;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzkd extends r3 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f24813d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f24814e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f24815f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f24816g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final zzfj f24817h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final zzfj f24818i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final zzfj f24819j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final zzfj f24820k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final zzfj f24821l;

    zzkd(zzli zzliVar) {
        super(zzliVar);
        this.f24813d = new HashMap();
        x xVarD = this.f24394a.D();
        xVarD.getClass();
        this.f24817h = new zzfj(xVarD, "last_delete_stale", 0L);
        x xVarD2 = this.f24394a.D();
        xVarD2.getClass();
        this.f24818i = new zzfj(xVarD2, "backoff", 0L);
        x xVarD3 = this.f24394a.D();
        xVarD3.getClass();
        this.f24819j = new zzfj(xVarD3, "last_upload", 0L);
        x xVarD4 = this.f24394a.D();
        xVarD4.getClass();
        this.f24820k = new zzfj(xVarD4, "last_upload_attempt", 0L);
        x xVarD5 = this.f24394a.D();
        xVarD5.getClass();
        this.f24821l = new zzfj(xVarD5, "midnight_offset", 0L);
    }

    @Override // com.google.android.gms.measurement.internal.r3
    protected final boolean g() {
        return false;
    }

    @Deprecated
    final Pair h(String str) {
        AdvertisingIdClient.Info infoA;
        f3 f3Var;
        AdvertisingIdClient.Info infoA2;
        c();
        long jB = this.f24394a.x().b();
        zzne.b();
        if (this.f24394a.v().y(null, zzel.f24596t0)) {
            f3 f3Var2 = (f3) this.f24813d.get(str);
            if (f3Var2 != null && jB < f3Var2.f24091c) {
                return new Pair(f3Var2.f24089a, Boolean.valueOf(f3Var2.f24090b));
            }
            AdvertisingIdClient.d(true);
            long jM = jB + this.f24394a.v().m(str, zzel.f24561c);
            try {
                infoA2 = AdvertisingIdClient.a(this.f24394a.N0());
            } catch (Exception e10) {
                this.f24394a.U().l().b("Unable to get advertising id", e10);
                f3Var = new f3(BuildConfig.FLAVOR, false, jM);
            }
            if (infoA2 == null) {
                return new Pair(BuildConfig.FLAVOR, Boolean.FALSE);
            }
            String strA = infoA2.a();
            f3Var = strA != null ? new f3(strA, infoA2.b(), jM) : new f3(BuildConfig.FLAVOR, infoA2.b(), jM);
            this.f24813d.put(str, f3Var);
            AdvertisingIdClient.d(false);
            return new Pair(f3Var.f24089a, Boolean.valueOf(f3Var.f24090b));
        }
        String str2 = this.f24814e;
        if (str2 != null && jB < this.f24816g) {
            return new Pair(str2, Boolean.valueOf(this.f24815f));
        }
        this.f24816g = jB + this.f24394a.v().m(str, zzel.f24561c);
        AdvertisingIdClient.d(true);
        try {
            infoA = AdvertisingIdClient.a(this.f24394a.N0());
        } catch (Exception e11) {
            this.f24394a.U().l().b("Unable to get advertising id", e11);
            this.f24814e = BuildConfig.FLAVOR;
        }
        if (infoA == null) {
            return new Pair(BuildConfig.FLAVOR, Boolean.FALSE);
        }
        this.f24814e = BuildConfig.FLAVOR;
        String strA2 = infoA.a();
        if (strA2 != null) {
            this.f24814e = strA2;
        }
        this.f24815f = infoA.b();
        AdvertisingIdClient.d(false);
        return new Pair(this.f24814e, Boolean.valueOf(this.f24815f));
    }

    final Pair i(String str, zzah zzahVar) {
        return zzahVar.i(zzag.AD_STORAGE) ? h(str) : new Pair(BuildConfig.FLAVOR, Boolean.FALSE);
    }

    @Deprecated
    final String j(String str) {
        c();
        String str2 = (String) h(str).first;
        MessageDigest messageDigestO = zzlp.o();
        if (messageDigestO == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestO.digest(str2.getBytes())));
    }
}
