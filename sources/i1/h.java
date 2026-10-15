package i1;

import java.util.List;

/* JADX INFO: compiled from: InputMerger.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f30351a = j.f("InputMerger");

    public static h a(String str) {
        try {
            return (h) Class.forName(str).newInstance();
        } catch (Exception e10) {
            j.c().b(f30351a, "Trouble instantiating + " + str, e10);
            return null;
        }
    }

    public abstract androidx.work.b b(List<androidx.work.b> list);
}
