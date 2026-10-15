package j0;

import android.content.Context;
import java.io.File;
import t9.m;

/* JADX INFO: compiled from: PreferenceDataStoreFile.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final File a(Context context, String str) {
        m.e(context, "<this>");
        m.e(str, "name");
        return g0.a.a(context, m.k(str, ".preferences_pb"));
    }
}
