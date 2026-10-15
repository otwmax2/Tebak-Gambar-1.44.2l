package h9;

import java.io.PrintWriter;
import java.io.StringWriter;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: Exceptions.kt */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static void a(Throwable th, Throwable th2) {
        t9.m.e(th, "<this>");
        t9.m.e(th2, "exception");
        if (th != th2) {
            n9.b.f32512a.a(th, th2);
        }
    }

    public static String b(Throwable th) {
        t9.m.e(th, "<this>");
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        String string = stringWriter.toString();
        t9.m.d(string, "sw.toString()");
        return string;
    }
}
