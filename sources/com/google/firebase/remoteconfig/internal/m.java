package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import com.google.android.gms.common.util.BiConsumer;
import com.vungle.mediation.BuildConfig;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONException;

/* JADX INFO: compiled from: ConfigGetParameterHandler.java */
/* JADX INFO: loaded from: classes2.dex */
public class m {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Charset f26654e = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final Pattern f26655f = Pattern.compile("^(1|true|t|yes|y|on)$", 2);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final Pattern f26656g = Pattern.compile("^(0|false|f|no|n|off|)$", 2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<BiConsumer<String, f>> f26657a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f26658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f26659c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f26660d;

    public m(Executor executor, e eVar, e eVar2) {
        this.f26658b = executor;
        this.f26659c = eVar;
        this.f26660d = eVar2;
    }

    private void c(final String str, final f fVar) {
        if (fVar == null) {
            return;
        }
        synchronized (this.f26657a) {
            for (final BiConsumer<String, f> biConsumer : this.f26657a) {
                this.f26658b.execute(new Runnable() { // from class: com.google.firebase.remoteconfig.internal.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        biConsumer.a(str, fVar);
                    }
                });
            }
        }
    }

    private static f e(e eVar) {
        return eVar.f();
    }

    private static Long g(e eVar, String str) {
        f fVarE = e(eVar);
        if (fVarE == null) {
            return null;
        }
        try {
            return Long.valueOf(fVarE.d().getLong(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    private static String i(e eVar, String str) {
        f fVarE = e(eVar);
        if (fVarE == null) {
            return null;
        }
        try {
            return fVarE.d().getString(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    private static void k(String str, String str2) {
        Log.w("FirebaseRemoteConfig", String.format("No value of type '%s' exists for parameter key '%s'.", str2, str));
    }

    public void b(BiConsumer<String, f> biConsumer) {
        synchronized (this.f26657a) {
            this.f26657a.add(biConsumer);
        }
    }

    public boolean d(String str) {
        String strI = i(this.f26659c, str);
        if (strI != null) {
            if (f26655f.matcher(strI).matches()) {
                c(str, e(this.f26659c));
                return true;
            }
            if (f26656g.matcher(strI).matches()) {
                c(str, e(this.f26659c));
                return false;
            }
        }
        String strI2 = i(this.f26660d, str);
        if (strI2 != null) {
            if (f26655f.matcher(strI2).matches()) {
                return true;
            }
            if (f26656g.matcher(strI2).matches()) {
                return false;
            }
        }
        k(str, "Boolean");
        return false;
    }

    public long f(String str) {
        Long lG = g(this.f26659c, str);
        if (lG != null) {
            c(str, e(this.f26659c));
            return lG.longValue();
        }
        Long lG2 = g(this.f26660d, str);
        if (lG2 != null) {
            return lG2.longValue();
        }
        k(str, "Long");
        return 0L;
    }

    public String h(String str) {
        String strI = i(this.f26659c, str);
        if (strI != null) {
            c(str, e(this.f26659c));
            return strI;
        }
        String strI2 = i(this.f26660d, str);
        if (strI2 != null) {
            return strI2;
        }
        k(str, "String");
        return BuildConfig.FLAVOR;
    }
}
