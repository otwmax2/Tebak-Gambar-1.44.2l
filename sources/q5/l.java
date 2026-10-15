package q5;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: CrashlyticsAppQualitySessionsStore.java */
/* JADX INFO: loaded from: classes2.dex */
class l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final FilenameFilter f33923d = new FilenameFilter() { // from class: q5.j
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return l.d(file, str);
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Comparator<File> f33924e = new Comparator() { // from class: q5.k
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return l.e((File) obj, (File) obj2);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v5.f f33925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f33926b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f33927c = null;

    l(v5.f fVar) {
        this.f33925a = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean d(File file, String str) {
        return str.startsWith("aqs.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int e(File file, File file2) {
        return Long.compare(file2.lastModified(), file.lastModified());
    }

    private static void f(v5.f fVar, String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        try {
            fVar.o(str, "aqs." + str2).createNewFile();
        } catch (IOException e10) {
            n5.g.f().l("Failed to persist App Quality Sessions session id.", e10);
        }
    }

    static String g(v5.f fVar, String str) {
        List<File> listP = fVar.p(str, f33923d);
        if (!listP.isEmpty()) {
            return ((File) Collections.min(listP, f33924e)).getName().substring(4);
        }
        n5.g.f().k("Unable to read App Quality Sessions session id.");
        return null;
    }

    public synchronized String c(String str) {
        if (Objects.equals(this.f33926b, str)) {
            return this.f33927c;
        }
        return g(this.f33925a, str);
    }

    public synchronized void h(String str) {
        if (!Objects.equals(this.f33927c, str)) {
            f(this.f33925a, this.f33926b, str);
            this.f33927c = str;
        }
    }

    public synchronized void i(String str) {
        if (!Objects.equals(this.f33926b, str)) {
            f(this.f33925a, str, this.f33927c);
            this.f33926b = str;
        }
    }
}
