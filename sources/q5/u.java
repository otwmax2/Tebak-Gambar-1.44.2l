package q5;

import com.google.auto.value.AutoValue;
import java.io.File;

/* JADX INFO: compiled from: CrashlyticsReportWithSessionId.java */
/* JADX INFO: loaded from: classes2.dex */
@AutoValue
public abstract class u {
    public static u a(s5.f0 f0Var, String str, File file) {
        return new b(f0Var, str, file);
    }

    public abstract s5.f0 b();

    public abstract File c();

    public abstract String d();
}
