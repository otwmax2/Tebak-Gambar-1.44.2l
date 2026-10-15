package v5;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import com.facebook.internal.AnalyticsEvents;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import n5.g;

/* JADX INFO: compiled from: FileStore.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f35848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f35849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f35850c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f35851d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final File f35852e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final File f35853f;

    public f(Context context) {
        String str;
        File filesDir = context.getFilesDir();
        this.f35848a = filesDir;
        if (v()) {
            str = ".com.google.firebase.crashlytics.files.v2" + File.pathSeparator + u(Application.getProcessName());
        } else {
            str = ".com.google.firebase.crashlytics.files.v1";
        }
        File fileQ = q(new File(filesDir, str));
        this.f35849b = fileQ;
        this.f35850c = q(new File(fileQ, "open-sessions"));
        this.f35851d = q(new File(fileQ, "reports"));
        this.f35852e = q(new File(fileQ, "priority-reports"));
        this.f35853f = q(new File(fileQ, "native-reports"));
    }

    private void a(File file) {
        if (file.exists() && s(file)) {
            g.f().b("Deleted previous Crashlytics file system: " + file.getPath());
        }
    }

    private File n(String str) {
        return r(new File(this.f35850c, str));
    }

    private static synchronized File q(File file) {
        if (file.exists()) {
            if (file.isDirectory()) {
                return file;
            }
            g.f().b("Unexpected non-directory file: " + file + "; deleting file and creating new directory.");
            file.delete();
        }
        if (!file.mkdirs()) {
            g.f().d("Could not create Crashlytics-specific directory: " + file);
        }
        return file;
    }

    private static File r(File file) {
        file.mkdirs();
        return file;
    }

    static boolean s(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                s(file2);
            }
        }
        return file.delete();
    }

    private static <T> List<T> t(T[] tArr) {
        return tArr == null ? Collections.emptyList() : Arrays.asList(tArr);
    }

    static String u(String str) {
        return str.replaceAll("[^a-zA-Z0-9.]", "_");
    }

    @SuppressLint({"AnnotateVersionCheck"})
    private static boolean v() {
        return Build.VERSION.SDK_INT >= 28;
    }

    public void b() {
        a(new File(this.f35848a, ".com.google.firebase.crashlytics"));
        a(new File(this.f35848a, ".com.google.firebase.crashlytics-ndk"));
        if (v()) {
            a(new File(this.f35848a, ".com.google.firebase.crashlytics.files.v1"));
        }
    }

    public boolean c(String str) {
        return s(new File(this.f35850c, str));
    }

    public List<String> d() {
        return t(this.f35850c.list());
    }

    public File e(String str) {
        return new File(this.f35849b, str);
    }

    public List<File> f(FilenameFilter filenameFilter) {
        return t(this.f35849b.listFiles(filenameFilter));
    }

    public File g(String str) {
        return new File(this.f35853f, str);
    }

    public List<File> h() {
        return t(this.f35853f.listFiles());
    }

    public File i(String str) {
        return r(new File(n(str), AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE));
    }

    public File j(String str) {
        return new File(this.f35852e, str);
    }

    public List<File> k() {
        return t(this.f35852e.listFiles());
    }

    public File l(String str) {
        return new File(this.f35851d, str);
    }

    public List<File> m() {
        return t(this.f35851d.listFiles());
    }

    public File o(String str, String str2) {
        return new File(n(str), str2);
    }

    public List<File> p(String str, FilenameFilter filenameFilter) {
        return t(n(str).listFiles(filenameFilter));
    }
}
