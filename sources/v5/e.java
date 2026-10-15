package v5;

import com.facebook.internal.Utility;
import com.vungle.mediation.BuildConfig;
import com.vungle.warren.model.ReportDBAdapter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicInteger;
import n5.g;
import q5.m;
import q5.u;
import s5.f0;
import t5.j;
import x5.i;

/* JADX INFO: compiled from: CrashlyticsReportPersistence.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Charset f35839e = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f35840f = 15;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final j f35841g = new j();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Comparator<? super File> f35842h = new Comparator() { // from class: v5.c
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return e.u((File) obj, (File) obj2);
        }
    };

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final FilenameFilter f35843i = new FilenameFilter() { // from class: v5.b
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return e.v(file, str);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f35844a = new AtomicInteger(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f35845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f35846c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m f35847d;

    public e(f fVar, i iVar, m mVar) {
        this.f35845b = fVar;
        this.f35846c = iVar;
        this.f35847d = mVar;
    }

    private static String A(File file) throws IOException {
        byte[] bArr = new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int i10 = fileInputStream.read(bArr);
                if (i10 <= 0) {
                    String str = new String(byteArrayOutputStream.toByteArray(), f35839e);
                    fileInputStream.close();
                    return str;
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    private void B(File file, f0.d dVar, String str, f0.a aVar) {
        String strD = this.f35847d.d(str);
        try {
            j jVar = f35841g;
            F(this.f35845b.g(str), jVar.M(jVar.L(A(file)).s(dVar).p(aVar).o(strD)));
        } catch (IOException e10) {
            g.f().l("Could not synthesize final native report file for " + file, e10);
        }
    }

    private void C(String str, long j10) {
        boolean z10;
        List<File> listP = this.f35845b.p(str, f35843i);
        if (listP.isEmpty()) {
            g.f().i("Session " + str + " has no events.");
            return;
        }
        Collections.sort(listP);
        ArrayList arrayList = new ArrayList();
        loop0: while (true) {
            z10 = false;
            for (File file : listP) {
                try {
                    arrayList.add(f35841g.j(A(file)));
                } catch (IOException e10) {
                    g.f().l("Could not add event to report for " + file, e10);
                }
                if (z10 || s(file.getName())) {
                    z10 = true;
                }
            }
        }
        if (!arrayList.isEmpty()) {
            D(this.f35845b.o(str, ReportDBAdapter.ReportColumns.TABLE_NAME), arrayList, j10, z10, r5.m.k(str, this.f35845b), this.f35847d.d(str));
        } else {
            g.f().k("Could not parse event files for session " + str);
        }
    }

    private void D(File file, List<f0.e.d> list, long j10, boolean z10, String str, String str2) {
        try {
            j jVar = f35841g;
            f0 f0VarQ = jVar.L(A(file)).t(j10, z10, str).o(str2).q(list);
            f0.e eVarM = f0VarQ.m();
            if (eVarM == null) {
                return;
            }
            g.f().b("appQualitySessionId: " + str2);
            F(z10 ? this.f35845b.j(eVarM.i()) : this.f35845b.l(eVarM.i()), jVar.M(f0VarQ));
        } catch (IOException e10) {
            g.f().l("Could not synthesize final report file for " + file, e10);
        }
    }

    private int E(String str, int i10) {
        List<File> listP = this.f35845b.p(str, new FilenameFilter() { // from class: v5.a
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return e.t(file, str2);
            }
        });
        Collections.sort(listP, new Comparator() { // from class: v5.d
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return e.x((File) obj, (File) obj2);
            }
        });
        return f(listP, i10);
    }

    private static void F(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f35839e);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void G(File file, String str, long j10) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f35839e);
        try {
            outputStreamWriter.write(str);
            file.setLastModified(h(j10));
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private SortedSet<String> e(String str) {
        this.f35845b.b();
        SortedSet<String> sortedSetP = p();
        if (str != null) {
            sortedSetP.remove(str);
        }
        if (sortedSetP.size() <= 8) {
            return sortedSetP;
        }
        while (sortedSetP.size() > 8) {
            String strLast = sortedSetP.last();
            g.f().b("Removing session over cap: " + strLast);
            this.f35845b.c(strLast);
            sortedSetP.remove(strLast);
        }
        return sortedSetP;
    }

    private static int f(List<File> list, int i10) {
        int size = list.size();
        for (File file : list) {
            if (size <= i10) {
                return size;
            }
            f.s(file);
            size--;
        }
        return size;
    }

    private void g() {
        int i10 = this.f35846c.b().f36269a.f36281b;
        List<File> listN = n();
        int size = listN.size();
        if (size <= i10) {
            return;
        }
        Iterator<File> it = listN.subList(i10, size).iterator();
        while (it.hasNext()) {
            it.next().delete();
        }
    }

    private static long h(long j10) {
        return j10 * 1000;
    }

    private void j(List<File> list) {
        Iterator<File> it = list.iterator();
        while (it.hasNext()) {
            it.next().delete();
        }
    }

    private static String m(int i10, boolean z10) {
        return "event" + String.format(Locale.US, "%010d", Integer.valueOf(i10)) + (z10 ? "_" : BuildConfig.FLAVOR);
    }

    private List<File> n() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f35845b.k());
        arrayList.addAll(this.f35845b.h());
        Comparator<? super File> comparator = f35842h;
        Collections.sort(arrayList, comparator);
        List<File> listM = this.f35845b.m();
        Collections.sort(listM, comparator);
        arrayList.addAll(listM);
        return arrayList;
    }

    private static String o(String str) {
        return str.substring(0, f35840f);
    }

    private static boolean s(String str) {
        return str.startsWith("event") && str.endsWith("_");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean t(File file, String str) {
        return str.startsWith("event") && !str.endsWith("_");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int u(File file, File file2) {
        return file2.getName().compareTo(file.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean v(File file, String str) {
        return str.startsWith("event");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int x(File file, File file2) {
        return o(file.getName()).compareTo(o(file2.getName()));
    }

    public void i() {
        j(this.f35845b.m());
        j(this.f35845b.k());
        j(this.f35845b.h());
    }

    public void k(String str, long j10) {
        for (String str2 : e(str)) {
            g.f().i("Finalizing report for session " + str2);
            C(str2, j10);
            this.f35845b.c(str2);
        }
        g();
    }

    public void l(String str, f0.d dVar, f0.a aVar) {
        File fileO = this.f35845b.o(str, ReportDBAdapter.ReportColumns.TABLE_NAME);
        g.f().b("Writing native session report for " + str + " to file: " + fileO);
        B(fileO, dVar, str, aVar);
    }

    public SortedSet<String> p() {
        return new TreeSet(this.f35845b.d()).descendingSet();
    }

    public long q(String str) {
        return this.f35845b.o(str, "start-time").lastModified();
    }

    public boolean r() {
        return (this.f35845b.m().isEmpty() && this.f35845b.k().isEmpty() && this.f35845b.h().isEmpty()) ? false : true;
    }

    public List<u> w() {
        List<File> listN = n();
        ArrayList arrayList = new ArrayList();
        for (File file : listN) {
            try {
                arrayList.add(u.a(f35841g.L(A(file)), file.getName(), file));
            } catch (IOException e10) {
                g.f().l("Could not load report file " + file + "; deleting", e10);
                file.delete();
            }
        }
        return arrayList;
    }

    public void y(f0.e.d dVar, String str, boolean z10) {
        int i10 = this.f35846c.b().f36269a.f36280a;
        try {
            F(this.f35845b.o(str, m(this.f35844a.getAndIncrement(), z10)), f35841g.k(dVar));
        } catch (IOException e10) {
            g.f().l("Could not persist event for session " + str, e10);
        }
        E(str, i10);
    }

    public void z(f0 f0Var) {
        f0.e eVarM = f0Var.m();
        if (eVarM == null) {
            g.f().b("Could not get session for report");
            return;
        }
        String strI = eVarM.i();
        try {
            F(this.f35845b.o(strI, ReportDBAdapter.ReportColumns.TABLE_NAME), f35841g.M(f0Var));
            G(this.f35845b.o(strI, "start-time"), BuildConfig.FLAVOR, eVarM.l());
        } catch (IOException e10) {
            g.f().c("Could not persist report for session " + strI, e10);
        }
    }
}
