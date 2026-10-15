package com.android.volley.toolbox;

import android.os.SystemClock;
import android.text.TextUtils;
import com.android.volley.Cache;
import com.android.volley.Header;
import com.android.volley.VolleyLog;
import com.vungle.mediation.BuildConfig;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class DiskBasedCache implements Cache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, CacheHeader> f5181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f5182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final FileSupplier f5183c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f5184d;

    /* JADX INFO: renamed from: com.android.volley.toolbox.DiskBasedCache$1, reason: invalid class name */
    class AnonymousClass1 implements FileSupplier {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ File f5185a;

        @Override // com.android.volley.toolbox.DiskBasedCache.FileSupplier
        public File get() {
            return this.f5185a;
        }
    }

    public interface FileSupplier {
        File get();
    }

    private String h(String str) {
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    private void i() {
        if (this.f5183c.get().exists()) {
            return;
        }
        VolleyLog.b("Re-initializing cache after external clearing.", new Object[0]);
        this.f5181a.clear();
        this.f5182b = 0L;
        b();
    }

    private void j() {
        if (this.f5182b < this.f5184d) {
            return;
        }
        if (VolleyLog.f5136b) {
            VolleyLog.e("Pruning old cache entries.", new Object[0]);
        }
        long j10 = this.f5182b;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Iterator<Map.Entry<String, CacheHeader>> it = this.f5181a.entrySet().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            CacheHeader value = it.next().getValue();
            if (g(value.f5187b).delete()) {
                this.f5182b -= value.f5186a;
            } else {
                String str = value.f5187b;
                VolleyLog.b("Could not delete cache entry for key=%s, filename=%s", str, h(str));
            }
            it.remove();
            i10++;
            if (this.f5182b < this.f5184d * 0.9f) {
                break;
            }
        }
        if (VolleyLog.f5136b) {
            VolleyLog.e("pruned %d files, %d bytes, %d ms", Integer.valueOf(i10), Long.valueOf(this.f5182b - j10), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
        }
    }

    private void k(String str, CacheHeader cacheHeader) {
        if (this.f5181a.containsKey(str)) {
            this.f5182b += cacheHeader.f5186a - this.f5181a.get(str).f5186a;
        } else {
            this.f5182b += cacheHeader.f5186a;
        }
        this.f5181a.put(str, cacheHeader);
    }

    private static int l(InputStream inputStream) throws IOException {
        int i10 = inputStream.read();
        if (i10 != -1) {
            return i10;
        }
        throw new EOFException();
    }

    static List<Header> m(CountingInputStream countingInputStream) throws IOException {
        int iN = n(countingInputStream);
        if (iN < 0) {
            throw new IOException("readHeaderList size=" + iN);
        }
        List<Header> listEmptyList = iN == 0 ? Collections.emptyList() : new ArrayList<>();
        for (int i10 = 0; i10 < iN; i10++) {
            listEmptyList.add(new Header(p(countingInputStream).intern(), p(countingInputStream).intern()));
        }
        return listEmptyList;
    }

    static int n(InputStream inputStream) throws IOException {
        return (l(inputStream) << 24) | (l(inputStream) << 0) | 0 | (l(inputStream) << 8) | (l(inputStream) << 16);
    }

    static long o(InputStream inputStream) throws IOException {
        return ((((long) l(inputStream)) & 255) << 0) | 0 | ((((long) l(inputStream)) & 255) << 8) | ((((long) l(inputStream)) & 255) << 16) | ((((long) l(inputStream)) & 255) << 24) | ((((long) l(inputStream)) & 255) << 32) | ((((long) l(inputStream)) & 255) << 40) | ((((long) l(inputStream)) & 255) << 48) | ((255 & ((long) l(inputStream))) << 56);
    }

    static String p(CountingInputStream countingInputStream) throws IOException {
        return new String(s(countingInputStream, o(countingInputStream)), "UTF-8");
    }

    private void r(String str) {
        CacheHeader cacheHeaderRemove = this.f5181a.remove(str);
        if (cacheHeaderRemove != null) {
            this.f5182b -= cacheHeaderRemove.f5186a;
        }
    }

    static byte[] s(CountingInputStream countingInputStream, long j10) throws IOException {
        long jB = countingInputStream.b();
        if (j10 >= 0 && j10 <= jB) {
            int i10 = (int) j10;
            if (i10 == j10) {
                byte[] bArr = new byte[i10];
                new DataInputStream(countingInputStream).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j10 + ", maxLength=" + jB);
    }

    static void t(List<Header> list, OutputStream outputStream) throws IOException {
        if (list == null) {
            u(outputStream, 0);
            return;
        }
        u(outputStream, list.size());
        for (Header header : list) {
            w(outputStream, header.a());
            w(outputStream, header.b());
        }
    }

    static void u(OutputStream outputStream, int i10) throws IOException {
        outputStream.write((i10 >> 0) & 255);
        outputStream.write((i10 >> 8) & 255);
        outputStream.write((i10 >> 16) & 255);
        outputStream.write((i10 >> 24) & 255);
    }

    static void v(OutputStream outputStream, long j10) throws IOException {
        outputStream.write((byte) (j10 >>> 0));
        outputStream.write((byte) (j10 >>> 8));
        outputStream.write((byte) (j10 >>> 16));
        outputStream.write((byte) (j10 >>> 24));
        outputStream.write((byte) (j10 >>> 32));
        outputStream.write((byte) (j10 >>> 40));
        outputStream.write((byte) (j10 >>> 48));
        outputStream.write((byte) (j10 >>> 56));
    }

    static void w(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        v(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    @Override // com.android.volley.Cache
    public synchronized Cache.Entry a(String str) {
        CacheHeader cacheHeader = this.f5181a.get(str);
        if (cacheHeader == null) {
            return null;
        }
        File fileG = g(str);
        try {
            CountingInputStream countingInputStream = new CountingInputStream(new BufferedInputStream(e(fileG)), fileG.length());
            try {
                CacheHeader cacheHeaderB = CacheHeader.b(countingInputStream);
                if (TextUtils.equals(str, cacheHeaderB.f5187b)) {
                    return cacheHeader.c(s(countingInputStream, countingInputStream.b()));
                }
                VolleyLog.b("%s: key=%s, found=%s", fileG.getAbsolutePath(), str, cacheHeaderB.f5187b);
                r(str);
                return null;
            } finally {
                countingInputStream.close();
            }
        } catch (IOException e10) {
            VolleyLog.b("%s: %s", fileG.getAbsolutePath(), e10.toString());
            q(str);
            return null;
        }
    }

    @Override // com.android.volley.Cache
    public synchronized void b() {
        File file = this.f5183c.get();
        if (!file.exists()) {
            if (!file.mkdirs()) {
                VolleyLog.c("Unable to create cache dir %s", file.getAbsolutePath());
            }
            return;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            try {
                long length = file2.length();
                CountingInputStream countingInputStream = new CountingInputStream(new BufferedInputStream(e(file2)), length);
                try {
                    CacheHeader cacheHeaderB = CacheHeader.b(countingInputStream);
                    cacheHeaderB.f5186a = length;
                    k(cacheHeaderB.f5187b, cacheHeaderB);
                    countingInputStream.close();
                } catch (Throwable th) {
                    countingInputStream.close();
                    throw th;
                }
            } catch (IOException unused) {
                file2.delete();
            }
        }
    }

    @Override // com.android.volley.Cache
    public synchronized void c(String str, boolean z10) {
        Cache.Entry entryA = a(str);
        if (entryA != null) {
            entryA.f5066f = 0L;
            if (z10) {
                entryA.f5065e = 0L;
            }
            d(str, entryA);
        }
    }

    @Override // com.android.volley.Cache
    public synchronized void clear() {
        File[] fileArrListFiles = this.f5183c.get().listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                file.delete();
            }
        }
        this.f5181a.clear();
        this.f5182b = 0L;
        VolleyLog.b("Cache cleared.", new Object[0]);
    }

    @Override // com.android.volley.Cache
    public synchronized void d(String str, Cache.Entry entry) {
        BufferedOutputStream bufferedOutputStream;
        CacheHeader cacheHeader;
        long length = this.f5182b + ((long) entry.f5061a.length);
        int i10 = this.f5184d;
        if (length <= i10 || r2.length <= i10 * 0.9f) {
            File fileG = g(str);
            try {
                bufferedOutputStream = new BufferedOutputStream(f(fileG));
                cacheHeader = new CacheHeader(str, entry);
            } catch (IOException unused) {
                if (!fileG.delete()) {
                    VolleyLog.b("Could not clean up file %s", fileG.getAbsolutePath());
                }
                i();
            }
            if (!cacheHeader.d(bufferedOutputStream)) {
                bufferedOutputStream.close();
                VolleyLog.b("Failed to write header for %s", fileG.getAbsolutePath());
                throw new IOException();
            }
            bufferedOutputStream.write(entry.f5061a);
            bufferedOutputStream.close();
            cacheHeader.f5186a = fileG.length();
            k(str, cacheHeader);
            j();
        }
    }

    InputStream e(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    OutputStream f(File file) throws FileNotFoundException {
        return new FileOutputStream(file);
    }

    public File g(String str) {
        return new File(this.f5183c.get(), h(str));
    }

    public synchronized void q(String str) {
        boolean zDelete = g(str).delete();
        r(str);
        if (!zDelete) {
            VolleyLog.b("Could not delete cache entry for key=%s, filename=%s", str, h(str));
        }
    }

    static class CountingInputStream extends FilterInputStream {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final long f5194o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private long f5195p;

        CountingInputStream(InputStream inputStream, long j10) {
            super(inputStream);
            this.f5194o = j10;
        }

        long b() {
            return this.f5194o - this.f5195p;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int i10 = super.read();
            if (i10 != -1) {
                this.f5195p++;
            }
            return i10;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            int i12 = super.read(bArr, i10, i11);
            if (i12 != -1) {
                this.f5195p += (long) i12;
            }
            return i12;
        }
    }

    static class CacheHeader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f5186a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f5187b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f5188c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final long f5189d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final long f5190e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final long f5191f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final long f5192g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final List<Header> f5193h;

        private CacheHeader(String str, String str2, long j10, long j11, long j12, long j13, List<Header> list) {
            this.f5187b = str;
            this.f5188c = BuildConfig.FLAVOR.equals(str2) ? null : str2;
            this.f5189d = j10;
            this.f5190e = j11;
            this.f5191f = j12;
            this.f5192g = j13;
            this.f5193h = list;
        }

        private static List<Header> a(Cache.Entry entry) {
            List<Header> list = entry.f5068h;
            return list != null ? list : HttpHeaderParser.i(entry.f5067g);
        }

        static CacheHeader b(CountingInputStream countingInputStream) throws IOException {
            if (DiskBasedCache.n(countingInputStream) == 538247942) {
                return new CacheHeader(DiskBasedCache.p(countingInputStream), DiskBasedCache.p(countingInputStream), DiskBasedCache.o(countingInputStream), DiskBasedCache.o(countingInputStream), DiskBasedCache.o(countingInputStream), DiskBasedCache.o(countingInputStream), DiskBasedCache.m(countingInputStream));
            }
            throw new IOException();
        }

        Cache.Entry c(byte[] bArr) {
            Cache.Entry entry = new Cache.Entry();
            entry.f5061a = bArr;
            entry.f5062b = this.f5188c;
            entry.f5063c = this.f5189d;
            entry.f5064d = this.f5190e;
            entry.f5065e = this.f5191f;
            entry.f5066f = this.f5192g;
            entry.f5067g = HttpHeaderParser.j(this.f5193h);
            entry.f5068h = Collections.unmodifiableList(this.f5193h);
            return entry;
        }

        boolean d(OutputStream outputStream) {
            try {
                DiskBasedCache.u(outputStream, 538247942);
                DiskBasedCache.w(outputStream, this.f5187b);
                String str = this.f5188c;
                if (str == null) {
                    str = BuildConfig.FLAVOR;
                }
                DiskBasedCache.w(outputStream, str);
                DiskBasedCache.v(outputStream, this.f5189d);
                DiskBasedCache.v(outputStream, this.f5190e);
                DiskBasedCache.v(outputStream, this.f5191f);
                DiskBasedCache.v(outputStream, this.f5192g);
                DiskBasedCache.t(this.f5193h, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e10) {
                VolleyLog.b("%s", e10.toString());
                return false;
            }
        }

        CacheHeader(String str, Cache.Entry entry) {
            this(str, entry.f5062b, entry.f5063c, entry.f5064d, entry.f5065e, entry.f5066f, a(entry));
        }
    }
}
