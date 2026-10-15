package g2;

import g2.j;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: Headers.java */
/* JADX INFO: loaded from: classes.dex */
public interface e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Deprecated
    public static final e f29806a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e f29807b = new j.a().a();

    /* JADX INFO: compiled from: Headers.java */
    static class a implements e {
        a() {
        }

        @Override // g2.e
        public Map<String, String> a() {
            return Collections.emptyMap();
        }
    }

    Map<String, String> a();
}
