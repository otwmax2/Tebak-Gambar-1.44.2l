package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import java.security.MessageDigest;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class l {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile zzaf f7541e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Context f7543g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final j f7537a = new d(h.t1("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final j f7538b = new e(h.t1("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final j f7539c = new f(h.t1("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final j f7540d = new g(h.t1("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f7542f = new Object();

    static n a(String str, h hVar, boolean z10, boolean z11) {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return f(str, hVar, z10, z11);
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }

    static n b(String str, boolean z10, boolean z11, boolean z12) {
        return g(str, z10, false, false, true);
    }

    static /* synthetic */ String c(boolean z10, String str, h hVar) throws Exception {
        String str2 = true != (!z10 && f(str, hVar, true, false).f7550a) ? "not allowed" : "debug cert rejected";
        MessageDigest messageDigestB = AndroidUtilsLight.b("SHA-256");
        Preconditions.k(messageDigestB);
        return String.format("%s: pkg=%s, sha256=%s, atk=%s, ver=%s", str2, str, Hex.a(messageDigestB.digest(hVar.Q4())), Boolean.valueOf(z10), "12451000.false");
    }

    static synchronized void d(Context context) {
        if (f7543g != null) {
            Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
        } else if (context != null) {
            f7543g = context.getApplicationContext();
        }
    }

    static boolean e() {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                h();
                return f7541e.g();
            } finally {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            }
        } catch (RemoteException | DynamiteModule.LoadingException e10) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            return false;
        }
    }

    private static n f(final String str, final h hVar, final boolean z10, boolean z11) {
        try {
            h();
            Preconditions.k(f7543g);
            try {
                return f7541e.S2(new zzs(str, hVar, z10, z11), ObjectWrapper.Q4(f7543g.getPackageManager())) ? n.b() : new m(new Callable() { // from class: com.google.android.gms.common.zze
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return l.c(z10, str, hVar);
                    }
                }, null);
            } catch (RemoteException e10) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
                return n.d("module call", e10);
            }
        } catch (DynamiteModule.LoadingException e11) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e11);
            return n.d("module init: ".concat(String.valueOf(e11.getMessage())), e11);
        }
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [android.os.IBinder, com.google.android.gms.dynamic.IObjectWrapper] */
    private static n g(String str, boolean z10, boolean z11, boolean z12, boolean z13) {
        n nVarD;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            Preconditions.k(f7543g);
            try {
                h();
                zzo zzoVar = new zzo(str, z10, false, ObjectWrapper.Q4(f7543g), false);
                try {
                    zzq zzqVarX5 = z13 ? f7541e.x5(zzoVar) : f7541e.F6(zzoVar);
                    if (zzqVarX5.W3()) {
                        nVarD = n.f(zzqVarX5.X3());
                    } else {
                        String strV3 = zzqVarX5.V3();
                        PackageManager.NameNotFoundException nameNotFoundException = zzqVarX5.Y3() == 4 ? new PackageManager.NameNotFoundException() : null;
                        if (strV3 == null) {
                            strV3 = "error checking package certificate";
                        }
                        nVarD = n.g(zzqVarX5.X3(), zzqVarX5.Y3(), strV3, nameNotFoundException);
                    }
                } catch (RemoteException e10) {
                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
                    nVarD = n.d("module call", e10);
                }
            } catch (DynamiteModule.LoadingException e11) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e11);
                nVarD = n.d("module init: ".concat(String.valueOf(e11.getMessage())), e11);
            }
            return nVarD;
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }

    private static void h() throws DynamiteModule.LoadingException {
        if (f7541e != null) {
            return;
        }
        Preconditions.k(f7543g);
        synchronized (f7542f) {
            if (f7541e == null) {
                f7541e = com.google.android.gms.common.internal.zzae.X0(DynamiteModule.e(f7543g, DynamiteModule.f7915f, "com.google.android.gms.googlecertificates").d("com.google.android.gms.common.GoogleCertificatesImpl"));
            }
        }
    }
}
