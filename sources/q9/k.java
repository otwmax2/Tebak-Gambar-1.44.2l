package q9;

import ba.q;
import com.vungle.mediation.BuildConfig;
import java.io.File;
import t9.m;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: Utils.kt */
/* JADX INFO: loaded from: classes2.dex */
public class k extends j {
    public static boolean c(File file) {
        m.e(file, "<this>");
        while (true) {
            boolean z10 = true;
            for (File file2 : j.b(file)) {
                if (!file2.delete() && file2.exists()) {
                    z10 = false;
                } else {
                    if (z10) {
                        break;
                    }
                    z10 = false;
                }
            }
            return z10;
        }
    }

    public static String d(File file) {
        m.e(file, "<this>");
        String name = file.getName();
        m.d(name, "name");
        return q.j0(name, '.', BuildConfig.FLAVOR);
    }
}
