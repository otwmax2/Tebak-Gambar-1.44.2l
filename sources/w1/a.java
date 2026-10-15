package w1;

import com.facebook.appevents.AppEventsConstants;
import com.vungle.mediation.BuildConfig;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Closeable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final File f35943o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final File f35944p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final File f35945q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final File f35946r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f35947s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f35948t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f35949u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Writer f35951w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f35953y;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f35950v = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final LinkedHashMap<String, c> f35952x = new LinkedHashMap<>(0, 0.75f, true);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f35954z = 0;
    final ThreadPoolExecutor A = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> B = new CallableC0286a();

    /* JADX INFO: renamed from: w1.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DiskLruCache.java */
    class CallableC0286a implements Callable<Void> {
        CallableC0286a() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            synchronized (a.this) {
                if (a.this.f35951w == null) {
                    return null;
                }
                a.this.y();
                if (a.this.q()) {
                    a.this.v();
                    a.this.f35953y = 0;
                }
                return null;
            }
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.java */
    public final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f35956a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean[] f35957b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f35958c;

        /* synthetic */ b(a aVar, c cVar, CallableC0286a callableC0286a) {
            this(cVar);
        }

        public void a() throws IOException {
            a.this.k(this, false);
        }

        public void b() {
            if (this.f35958c) {
                return;
            }
            try {
                a();
            } catch (IOException unused) {
            }
        }

        public void e() throws IOException {
            a.this.k(this, true);
            this.f35958c = true;
        }

        public File f(int i10) throws IOException {
            File fileK;
            synchronized (a.this) {
                if (this.f35956a.f35965f != this) {
                    throw new IllegalStateException();
                }
                if (!this.f35956a.f35964e) {
                    this.f35957b[i10] = true;
                }
                fileK = this.f35956a.k(i10);
                if (!a.this.f35943o.exists()) {
                    a.this.f35943o.mkdirs();
                }
            }
            return fileK;
        }

        private b(c cVar) {
            this.f35956a = cVar;
            this.f35957b = cVar.f35964e ? null : new boolean[a.this.f35949u];
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.java */
    private final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f35960a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long[] f35961b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        File[] f35962c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        File[] f35963d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f35964e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private b f35965f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f35966g;

        /* synthetic */ c(a aVar, String str, CallableC0286a callableC0286a) {
            this(str);
        }

        private IOException m(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void n(String[] strArr) throws IOException {
            if (strArr.length != a.this.f35949u) {
                throw m(strArr);
            }
            for (int i10 = 0; i10 < strArr.length; i10++) {
                try {
                    this.f35961b[i10] = Long.parseLong(strArr[i10]);
                } catch (NumberFormatException unused) {
                    throw m(strArr);
                }
            }
        }

        public File j(int i10) {
            return this.f35962c[i10];
        }

        public File k(int i10) {
            return this.f35963d[i10];
        }

        public String l() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j10 : this.f35961b) {
                sb.append(' ');
                sb.append(j10);
            }
            return sb.toString();
        }

        private c(String str) {
            this.f35960a = str;
            this.f35961b = new long[a.this.f35949u];
            this.f35962c = new File[a.this.f35949u];
            this.f35963d = new File[a.this.f35949u];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i10 = 0; i10 < a.this.f35949u; i10++) {
                sb.append(i10);
                this.f35962c[i10] = new File(a.this.f35943o, sb.toString());
                sb.append(".tmp");
                this.f35963d[i10] = new File(a.this.f35943o, sb.toString());
                sb.setLength(length);
            }
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.java */
    public final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f35968a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f35969b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long[] f35970c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final File[] f35971d;

        /* synthetic */ d(a aVar, String str, long j10, File[] fileArr, long[] jArr, CallableC0286a callableC0286a) {
            this(str, j10, fileArr, jArr);
        }

        public File a(int i10) {
            return this.f35971d[i10];
        }

        private d(String str, long j10, File[] fileArr, long[] jArr) {
            this.f35968a = str;
            this.f35969b = j10;
            this.f35971d = fileArr;
            this.f35970c = jArr;
        }
    }

    private a(File file, int i10, int i11, long j10) {
        this.f35943o = file;
        this.f35947s = i10;
        this.f35944p = new File(file, "journal");
        this.f35945q = new File(file, "journal.tmp");
        this.f35946r = new File(file, "journal.bkp");
        this.f35949u = i11;
        this.f35948t = j10;
    }

    private void j() {
        if (this.f35951w == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void k(b bVar, boolean z10) throws IOException {
        c cVar = bVar.f35956a;
        if (cVar.f35965f != bVar) {
            throw new IllegalStateException();
        }
        if (z10 && !cVar.f35964e) {
            for (int i10 = 0; i10 < this.f35949u; i10++) {
                if (!bVar.f35957b[i10]) {
                    bVar.a();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i10);
                }
                if (!cVar.k(i10).exists()) {
                    bVar.a();
                    return;
                }
            }
        }
        for (int i11 = 0; i11 < this.f35949u; i11++) {
            File fileK = cVar.k(i11);
            if (!z10) {
                m(fileK);
            } else if (fileK.exists()) {
                File fileJ = cVar.j(i11);
                fileK.renameTo(fileJ);
                long j10 = cVar.f35961b[i11];
                long length = fileJ.length();
                cVar.f35961b[i11] = length;
                this.f35950v = (this.f35950v - j10) + length;
            }
        }
        this.f35953y++;
        cVar.f35965f = null;
        if (cVar.f35964e || z10) {
            cVar.f35964e = true;
            this.f35951w.append((CharSequence) "CLEAN");
            this.f35951w.append(' ');
            this.f35951w.append((CharSequence) cVar.f35960a);
            this.f35951w.append((CharSequence) cVar.l());
            this.f35951w.append('\n');
            if (z10) {
                long j11 = this.f35954z;
                this.f35954z = 1 + j11;
                cVar.f35966g = j11;
            }
        } else {
            this.f35952x.remove(cVar.f35960a);
            this.f35951w.append((CharSequence) "REMOVE");
            this.f35951w.append(' ');
            this.f35951w.append((CharSequence) cVar.f35960a);
            this.f35951w.append('\n');
        }
        this.f35951w.flush();
        if (this.f35950v > this.f35948t || q()) {
            this.A.submit(this.B);
        }
    }

    private static void m(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private synchronized b o(String str, long j10) throws IOException {
        j();
        c cVar = this.f35952x.get(str);
        CallableC0286a callableC0286a = null;
        if (j10 != -1 && (cVar == null || cVar.f35966g != j10)) {
            return null;
        }
        if (cVar == null) {
            cVar = new c(this, str, callableC0286a);
            this.f35952x.put(str, cVar);
        } else if (cVar.f35965f != null) {
            return null;
        }
        b bVar = new b(this, cVar, callableC0286a);
        cVar.f35965f = bVar;
        this.f35951w.append((CharSequence) "DIRTY");
        this.f35951w.append(' ');
        this.f35951w.append((CharSequence) str);
        this.f35951w.append('\n');
        this.f35951w.flush();
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean q() {
        int i10 = this.f35953y;
        return i10 >= 2000 && i10 >= this.f35952x.size();
    }

    public static a r(File file, int i10, int i11, long j10) throws IOException {
        if (j10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i11 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                x(file2, file3, false);
            }
        }
        a aVar = new a(file, i10, i11, j10);
        if (aVar.f35944p.exists()) {
            try {
                aVar.t();
                aVar.s();
                return aVar;
            } catch (IOException e10) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e10.getMessage() + ", removing");
                aVar.l();
            }
        }
        file.mkdirs();
        a aVar2 = new a(file, i10, i11, j10);
        aVar2.v();
        return aVar2;
    }

    private void s() throws IOException {
        m(this.f35945q);
        Iterator<c> it = this.f35952x.values().iterator();
        while (it.hasNext()) {
            c next = it.next();
            int i10 = 0;
            if (next.f35965f == null) {
                while (i10 < this.f35949u) {
                    this.f35950v += next.f35961b[i10];
                    i10++;
                }
            } else {
                next.f35965f = null;
                while (i10 < this.f35949u) {
                    m(next.j(i10));
                    m(next.k(i10));
                    i10++;
                }
                it.remove();
            }
        }
    }

    private void t() throws IOException {
        w1.b bVar = new w1.b(new FileInputStream(this.f35944p), w1.c.f35979a);
        try {
            String strE = bVar.e();
            String strE2 = bVar.e();
            String strE3 = bVar.e();
            String strE4 = bVar.e();
            String strE5 = bVar.e();
            if (!"libcore.io.DiskLruCache".equals(strE) || !AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(strE2) || !Integer.toString(this.f35947s).equals(strE3) || !Integer.toString(this.f35949u).equals(strE4) || !BuildConfig.FLAVOR.equals(strE5)) {
                throw new IOException("unexpected journal header: [" + strE + ", " + strE2 + ", " + strE4 + ", " + strE5 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    u(bVar.e());
                    i10++;
                } catch (EOFException unused) {
                    this.f35953y = i10 - this.f35952x.size();
                    if (bVar.d()) {
                        v();
                    } else {
                        this.f35951w = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f35944p, true), w1.c.f35979a));
                    }
                    w1.c.a(bVar);
                    return;
                }
            }
        } catch (Throwable th) {
            w1.c.a(bVar);
            throw th;
        }
    }

    private void u(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i10 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i10);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i10);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.f35952x.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i10, iIndexOf2);
        }
        c cVar = this.f35952x.get(strSubstring);
        CallableC0286a callableC0286a = null;
        if (cVar == null) {
            cVar = new c(this, strSubstring, callableC0286a);
            this.f35952x.put(strSubstring, cVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            cVar.f35964e = true;
            cVar.f35965f = null;
            cVar.n(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
            cVar.f35965f = new b(this, cVar, callableC0286a);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void v() throws IOException {
        Writer writer = this.f35951w;
        if (writer != null) {
            writer.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f35945q), w1.c.f35979a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write(AppEventsConstants.EVENT_PARAM_VALUE_YES);
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f35947s));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f35949u));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (c cVar : this.f35952x.values()) {
                if (cVar.f35965f != null) {
                    bufferedWriter.write("DIRTY " + cVar.f35960a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + cVar.f35960a + cVar.l() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f35944p.exists()) {
                x(this.f35944p, this.f35946r, true);
            }
            x(this.f35945q, this.f35944p, false);
            this.f35946r.delete();
            this.f35951w = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f35944p, true), w1.c.f35979a));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    private static void x(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            m(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() throws IOException {
        while (this.f35950v > this.f35948t) {
            w(this.f35952x.entrySet().iterator().next().getKey());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.f35951w == null) {
            return;
        }
        for (c cVar : new ArrayList(this.f35952x.values())) {
            if (cVar.f35965f != null) {
                cVar.f35965f.a();
            }
        }
        y();
        this.f35951w.close();
        this.f35951w = null;
    }

    public void l() throws IOException {
        close();
        w1.c.b(this.f35943o);
    }

    public b n(String str) throws IOException {
        return o(str, -1L);
    }

    public synchronized d p(String str) throws IOException {
        j();
        c cVar = this.f35952x.get(str);
        if (cVar == null) {
            return null;
        }
        if (!cVar.f35964e) {
            return null;
        }
        for (File file : cVar.f35962c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f35953y++;
        this.f35951w.append((CharSequence) "READ");
        this.f35951w.append(' ');
        this.f35951w.append((CharSequence) str);
        this.f35951w.append('\n');
        if (q()) {
            this.A.submit(this.B);
        }
        return new d(this, str, cVar.f35966g, cVar.f35962c, cVar.f35961b, null);
    }

    public synchronized boolean w(String str) throws IOException {
        j();
        c cVar = this.f35952x.get(str);
        if (cVar != null && cVar.f35965f == null) {
            for (int i10 = 0; i10 < this.f35949u; i10++) {
                File fileJ = cVar.j(i10);
                if (fileJ.exists() && !fileJ.delete()) {
                    throw new IOException("failed to delete " + fileJ);
                }
                this.f35950v -= cVar.f35961b[i10];
                cVar.f35961b[i10] = 0;
            }
            this.f35953y++;
            this.f35951w.append((CharSequence) "REMOVE");
            this.f35951w.append(' ');
            this.f35951w.append((CharSequence) str);
            this.f35951w.append('\n');
            this.f35952x.remove(str);
            if (q()) {
                this.A.submit(this.B);
            }
            return true;
        }
        return false;
    }
}
