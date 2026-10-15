package androidx.core.os;

import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;

/* JADX INFO: compiled from: ConfigurationCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: compiled from: ConfigurationCompat.java */
    static class a {
        static LocaleList a(Configuration configuration) {
            return configuration.getLocales();
        }
    }

    public static h a(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? h.i(a.a(configuration)) : h.a(configuration.locale);
    }
}
