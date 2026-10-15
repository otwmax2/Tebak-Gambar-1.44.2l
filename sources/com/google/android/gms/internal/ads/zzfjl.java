package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.util.Hex;
import java.io.File;
import java.util.HashSet;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfjl {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f18313f = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f18314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SharedPreferences f18315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f18316c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfis f18317d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f18318e;

    public zzfjl(Context context, int i10, zzfis zzfisVar, boolean z10) {
        this.f18318e = false;
        this.f18314a = context;
        this.f18316c = Integer.toString(i10 - 1);
        this.f18315b = context.getSharedPreferences("pcvmspf", 0);
        this.f18317d = zzfisVar;
        this.f18318e = z10;
    }

    private final File e(String str) {
        return new File(new File(this.f18314a.getDir("pccache", 0), this.f18316c), str);
    }

    private static String f(zzasr zzasrVar) {
        zzast zzastVarL = zzasu.L();
        zzastVarL.s(zzasrVar.K().R());
        zzastVarL.o(zzasrVar.K().Q());
        zzastVarL.p(zzasrVar.K().I());
        zzastVarL.r(zzasrVar.K().K());
        zzastVarL.q(zzasrVar.K().J());
        return Hex.a(((zzasu) zzastVarL.k()).t());
    }

    private final String g() {
        return "FBAMTD".concat(String.valueOf(this.f18316c));
    }

    private final String h() {
        return "LATMTD".concat(String.valueOf(this.f18316c));
    }

    private final void i(int i10, long j10) {
        zzfis zzfisVar = this.f18317d;
        if (zzfisVar != null) {
            zzfisVar.a(i10, j10);
        }
    }

    private final void j(int i10, long j10, String str) {
        zzfis zzfisVar = this.f18317d;
        if (zzfisVar != null) {
            zzfisVar.b(i10, j10, str);
        }
    }

    private final zzasu k(int i10) {
        String string = i10 == 1 ? this.f18315b.getString(h(), null) : this.f18315b.getString(g(), null);
        if (string == null) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            return zzasu.P(zzgpe.J(Hex.c(string)), this.f18318e ? zzgpy.a() : zzgpy.b());
        } catch (zzgqy unused) {
            return null;
        } catch (NullPointerException unused2) {
            i(2029, jCurrentTimeMillis);
            return null;
        } catch (RuntimeException unused3) {
            i(2032, jCurrentTimeMillis);
            return null;
        }
    }

    public final boolean a(zzasr zzasrVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (f18313f) {
            if (!zzfjf.e(new File(e(zzasrVar.K().R()), "pcbc"), zzasrVar.L().k())) {
                i(4020, jCurrentTimeMillis);
                return false;
            }
            String strF = f(zzasrVar);
            SharedPreferences.Editor editorEdit = this.f18315b.edit();
            editorEdit.putString(h(), strF);
            boolean zCommit = editorEdit.commit();
            if (zCommit) {
                i(5015, jCurrentTimeMillis);
            } else {
                i(4021, jCurrentTimeMillis);
            }
            return zCommit;
        }
    }

    public final boolean b(zzasr zzasrVar, zzfjk zzfjkVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (f18313f) {
            zzasu zzasuVarK = k(1);
            String strR = zzasrVar.K().R();
            if (zzasuVarK != null && zzasuVarK.R().equals(strR)) {
                i(4014, jCurrentTimeMillis);
                return false;
            }
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            File fileE = e(strR);
            if (fileE.exists()) {
                boolean zIsDirectory = fileE.isDirectory();
                String str = AppEventsConstants.EVENT_PARAM_VALUE_YES;
                if (true != zIsDirectory) {
                    str = AppEventsConstants.EVENT_PARAM_VALUE_NO;
                }
                boolean zIsFile = fileE.isFile();
                String str2 = AppEventsConstants.EVENT_PARAM_VALUE_YES;
                if (true != zIsFile) {
                    str2 = AppEventsConstants.EVENT_PARAM_VALUE_NO;
                }
                j(4023, jCurrentTimeMillis2, "d:" + str + ",f:" + str2);
                i(4015, jCurrentTimeMillis2);
            } else if (!fileE.mkdirs()) {
                boolean zCanWrite = fileE.canWrite();
                String str3 = AppEventsConstants.EVENT_PARAM_VALUE_YES;
                if (true != zCanWrite) {
                    str3 = AppEventsConstants.EVENT_PARAM_VALUE_NO;
                }
                j(4024, jCurrentTimeMillis2, "cw:".concat(str3));
                i(4015, jCurrentTimeMillis2);
                return false;
            }
            File fileE2 = e(strR);
            File file = new File(fileE2, "pcam.jar");
            File file2 = new File(fileE2, "pcbc");
            if (!zzfjf.e(file, zzasrVar.M().k())) {
                i(4016, jCurrentTimeMillis);
                return false;
            }
            if (!zzfjf.e(file2, zzasrVar.L().k())) {
                i(4017, jCurrentTimeMillis);
                return false;
            }
            if (zzfjkVar != null && !zzfjkVar.a(file)) {
                i(4018, jCurrentTimeMillis);
                zzfjf.d(fileE2);
                return false;
            }
            String strF = f(zzasrVar);
            long jCurrentTimeMillis3 = System.currentTimeMillis();
            String string = this.f18315b.getString(h(), null);
            SharedPreferences.Editor editorEdit = this.f18315b.edit();
            editorEdit.putString(h(), strF);
            if (string != null) {
                editorEdit.putString(g(), string);
            }
            if (!editorEdit.commit()) {
                i(4019, jCurrentTimeMillis3);
                return false;
            }
            HashSet hashSet = new HashSet();
            zzasu zzasuVarK2 = k(1);
            if (zzasuVarK2 != null) {
                hashSet.add(zzasuVarK2.R());
            }
            zzasu zzasuVarK3 = k(2);
            if (zzasuVarK3 != null) {
                hashSet.add(zzasuVarK3.R());
            }
            for (File file3 : new File(this.f18314a.getDir("pccache", 0), this.f18316c).listFiles()) {
                if (!hashSet.contains(file3.getName())) {
                    zzfjf.d(file3);
                }
            }
            i(5014, jCurrentTimeMillis);
            return true;
        }
    }

    public final zzfjd c(int i10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (f18313f) {
            zzasu zzasuVarK = k(1);
            if (zzasuVarK == null) {
                i(4022, jCurrentTimeMillis);
                return null;
            }
            File fileE = e(zzasuVarK.R());
            File file = new File(fileE, "pcam.jar");
            if (!file.exists()) {
                file = new File(fileE, "pcam");
            }
            File file2 = new File(fileE, "pcbc");
            File file3 = new File(fileE, "pcopt");
            i(5016, jCurrentTimeMillis);
            return new zzfjd(zzasuVarK, file, file2, file3);
        }
    }

    public final boolean d(int i10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (f18313f) {
            zzasu zzasuVarK = k(1);
            if (zzasuVarK == null) {
                i(4025, jCurrentTimeMillis);
                return false;
            }
            File fileE = e(zzasuVarK.R());
            if (!new File(fileE, "pcam.jar").exists()) {
                i(4026, jCurrentTimeMillis);
                return false;
            }
            if (new File(fileE, "pcbc").exists()) {
                i(5019, jCurrentTimeMillis);
                return true;
            }
            i(4027, jCurrentTimeMillis);
            return false;
        }
    }
}
