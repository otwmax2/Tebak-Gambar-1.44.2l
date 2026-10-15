package g0;

import android.content.Context;
import java.io.File;
import t9.m;

/* JADX INFO: compiled from: DataStoreFile.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final File a(Context context, String str) {
        m.e(context, "<this>");
        m.e(str, "fileName");
        return new File(context.getApplicationContext().getFilesDir(), m.k("datastore/", str));
    }
}
