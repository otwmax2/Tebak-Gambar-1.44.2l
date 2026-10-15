package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import com.vungle.mediation.BuildConfig;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzalk implements zzajy {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzalj f9498c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f9496a = new LinkedHashMap(16, 0.75f, true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f9497b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f9499d = 5242880;

    public zzalk(zzalj zzaljVar, int i10) {
        this.f9498c = zzaljVar;
    }

    static int a(InputStream inputStream) throws IOException {
        return (j(inputStream) << 24) | j(inputStream) | (j(inputStream) << 8) | (j(inputStream) << 16);
    }

    static long b(InputStream inputStream) throws IOException {
        return (((long) j(inputStream)) & 255) | ((((long) j(inputStream)) & 255) << 8) | ((((long) j(inputStream)) & 255) << 16) | ((((long) j(inputStream)) & 255) << 24) | ((((long) j(inputStream)) & 255) << 32) | ((((long) j(inputStream)) & 255) << 40) | ((((long) j(inputStream)) & 255) << 48) | ((((long) j(inputStream)) & 255) << 56);
    }

    static String d(zzali zzaliVar) throws IOException {
        return new String(i(zzaliVar, b(zzaliVar)), "UTF-8");
    }

    static void f(OutputStream outputStream, int i10) throws IOException {
        outputStream.write(i10 & 255);
        outputStream.write((i10 >> 8) & 255);
        outputStream.write((i10 >> 16) & 255);
        outputStream.write((i10 >> 24) & 255);
    }

    static void g(OutputStream outputStream, long j10) throws IOException {
        outputStream.write((byte) j10);
        outputStream.write((byte) (j10 >>> 8));
        outputStream.write((byte) (j10 >>> 16));
        outputStream.write((byte) (j10 >>> 24));
        outputStream.write((byte) (j10 >>> 32));
        outputStream.write((byte) (j10 >>> 40));
        outputStream.write((byte) (j10 >>> 48));
        outputStream.write((byte) (j10 >>> 56));
    }

    static void h(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        int length = bytes.length;
        g(outputStream, length);
        outputStream.write(bytes, 0, length);
    }

    static byte[] i(zzali zzaliVar, long j10) throws IOException {
        long jB = zzaliVar.b();
        if (j10 >= 0 && j10 <= jB) {
            int i10 = (int) j10;
            if (i10 == j10) {
                byte[] bArr = new byte[i10];
                new DataInputStream(zzaliVar).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j10 + ", maxLength=" + jB);
    }

    private static int j(InputStream inputStream) throws IOException {
        int i10 = inputStream.read();
        if (i10 != -1) {
            return i10;
        }
        throw new EOFException();
    }

    private final void k(String str, zzalh zzalhVar) {
        if (this.f9496a.containsKey(str)) {
            this.f9497b += zzalhVar.f9486a - ((zzalh) this.f9496a.get(str)).f9486a;
        } else {
            this.f9497b += zzalhVar.f9486a;
        }
        this.f9496a.put(str, zzalhVar);
    }

    private final void l(String str) {
        zzalh zzalhVar = (zzalh) this.f9496a.remove(str);
        if (zzalhVar != null) {
            this.f9497b -= zzalhVar.f9486a;
        }
    }

    private static final String m(String str) {
        int length = str.length() / 2;
        return String.valueOf(String.valueOf(str.substring(0, length).hashCode())).concat(String.valueOf(String.valueOf(str.substring(length).hashCode())));
    }

    public final File c(String str) {
        return new File(this.f9498c.zza(), m(str));
    }

    public final synchronized void e(String str) {
        boolean zDelete = c(str).delete();
        l(str);
        if (zDelete) {
            return;
        }
        zzala.a("Could not delete cache entry for key=%s, filename=%s", str, m(str));
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final synchronized zzajx o(String str) {
        zzalh zzalhVar = (zzalh) this.f9496a.get(str);
        if (zzalhVar == null) {
            return null;
        }
        File fileC = c(str);
        try {
            zzali zzaliVar = new zzali(new BufferedInputStream(new FileInputStream(fileC)), fileC.length());
            try {
                zzalh zzalhVarA = zzalh.a(zzaliVar);
                if (!TextUtils.equals(str, zzalhVarA.f9487b)) {
                    zzala.a("%s: key=%s, found=%s", fileC.getAbsolutePath(), str, zzalhVarA.f9487b);
                    l(str);
                    return null;
                }
                byte[] bArrI = i(zzaliVar, zzaliVar.b());
                zzajx zzajxVar = new zzajx();
                zzajxVar.f9397a = bArrI;
                zzajxVar.f9398b = zzalhVar.f9488c;
                zzajxVar.f9399c = zzalhVar.f9489d;
                zzajxVar.f9400d = zzalhVar.f9490e;
                zzajxVar.f9401e = zzalhVar.f9491f;
                zzajxVar.f9402f = zzalhVar.f9492g;
                List<zzakg> list = zzalhVar.f9493h;
                TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                for (zzakg zzakgVar : list) {
                    treeMap.put(zzakgVar.a(), zzakgVar.b());
                }
                zzajxVar.f9403g = treeMap;
                zzajxVar.f9404h = Collections.unmodifiableList(zzalhVar.f9493h);
                return zzajxVar;
            } finally {
                zzaliVar.close();
            }
        } catch (IOException e10) {
            zzala.a("%s: %s", fileC.getAbsolutePath(), e10.toString());
            e(str);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final synchronized void p(String str, boolean z10) {
        zzajx zzajxVarO = o(str);
        if (zzajxVarO != null) {
            zzajxVarO.f9402f = 0L;
            zzajxVarO.f9401e = 0L;
            q(str, zzajxVarO);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final synchronized void q(String str, zzajx zzajxVar) {
        long j10;
        long j11 = this.f9497b;
        int length = zzajxVar.f9397a.length;
        long j12 = j11 + ((long) length);
        int i10 = this.f9499d;
        if (j12 <= i10 || length <= i10 * 0.9f) {
            File fileC = c(str);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileC));
                zzalh zzalhVar = new zzalh(str, zzajxVar);
                try {
                    f(bufferedOutputStream, 538247942);
                    h(bufferedOutputStream, zzalhVar.f9487b);
                    String str2 = zzalhVar.f9488c;
                    if (str2 == null) {
                        str2 = BuildConfig.FLAVOR;
                    }
                    h(bufferedOutputStream, str2);
                    g(bufferedOutputStream, zzalhVar.f9489d);
                    g(bufferedOutputStream, zzalhVar.f9490e);
                    g(bufferedOutputStream, zzalhVar.f9491f);
                    g(bufferedOutputStream, zzalhVar.f9492g);
                    List<zzakg> list = zzalhVar.f9493h;
                    if (list != null) {
                        f(bufferedOutputStream, list.size());
                        for (zzakg zzakgVar : list) {
                            h(bufferedOutputStream, zzakgVar.a());
                            h(bufferedOutputStream, zzakgVar.b());
                        }
                    } else {
                        f(bufferedOutputStream, 0);
                    }
                    bufferedOutputStream.flush();
                    bufferedOutputStream.write(zzajxVar.f9397a);
                    bufferedOutputStream.close();
                    zzalhVar.f9486a = fileC.length();
                    k(str, zzalhVar);
                    if (this.f9497b >= this.f9499d) {
                        if (zzala.f9472b) {
                            zzala.d("Pruning old cache entries.", new Object[0]);
                        }
                        long j13 = this.f9497b;
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        Iterator it = this.f9496a.entrySet().iterator();
                        int i11 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                j10 = jElapsedRealtime;
                                break;
                            }
                            zzalh zzalhVar2 = (zzalh) ((Map.Entry) it.next()).getValue();
                            if (c(zzalhVar2.f9487b).delete()) {
                                j10 = jElapsedRealtime;
                                this.f9497b -= zzalhVar2.f9486a;
                            } else {
                                j10 = jElapsedRealtime;
                                String str3 = zzalhVar2.f9487b;
                                zzala.a("Could not delete cache entry for key=%s, filename=%s", str3, m(str3));
                            }
                            it.remove();
                            i11++;
                            if (this.f9497b < this.f9499d * 0.9f) {
                                break;
                            } else {
                                jElapsedRealtime = j10;
                            }
                        }
                        if (zzala.f9472b) {
                            zzala.d("pruned %d files, %d bytes, %d ms", Integer.valueOf(i11), Long.valueOf(this.f9497b - j13), Long.valueOf(SystemClock.elapsedRealtime() - j10));
                        }
                    }
                } catch (IOException e10) {
                    zzala.a("%s", e10.toString());
                    bufferedOutputStream.close();
                    zzala.a("Failed to write header for %s", fileC.getAbsolutePath());
                    throw new IOException();
                }
            } catch (IOException unused) {
                if (!fileC.delete()) {
                    zzala.a("Could not clean up file %s", fileC.getAbsolutePath());
                }
                if (!this.f9498c.zza().exists()) {
                    zzala.a("Re-initializing cache after external clearing.", new Object[0]);
                    this.f9496a.clear();
                    this.f9497b = 0L;
                    zzb();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final synchronized void zzb() {
        File fileZza = this.f9498c.zza();
        if (!fileZza.exists()) {
            if (fileZza.mkdirs()) {
                return;
            }
            zzala.b("Unable to create cache dir %s", fileZza.getAbsolutePath());
            return;
        }
        File[] fileArrListFiles = fileZza.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                try {
                    long length = file.length();
                    zzali zzaliVar = new zzali(new BufferedInputStream(new FileInputStream(file)), length);
                    try {
                        zzalh zzalhVarA = zzalh.a(zzaliVar);
                        zzalhVarA.f9486a = length;
                        k(zzalhVarA.f9487b, zzalhVarA);
                        zzaliVar.close();
                    } catch (Throwable th) {
                        zzaliVar.close();
                        throw th;
                    }
                } catch (IOException unused) {
                    file.delete();
                }
            }
        }
    }

    public zzalk(File file, int i10) {
        this.f9498c = new zzalg(this, file);
    }
}
