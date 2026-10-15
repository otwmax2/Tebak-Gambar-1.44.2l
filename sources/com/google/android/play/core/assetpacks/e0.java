package com.google.android.play.core.assetpacks;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class e0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final v4.a f25853c = new v4.a("AssetPackStorage");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f25854d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f25855e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f25856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r2 f25857b;

    static {
        TimeUnit timeUnit = TimeUnit.DAYS;
        f25854d = timeUnit.toMillis(14L);
        f25855e = timeUnit.toMillis(28L);
    }

    e0(Context context, r2 r2Var) {
        this.f25856a = context;
        this.f25857b = r2Var;
    }

    private static long g(File file, boolean z10) {
        if (!file.exists()) {
            return -1L;
        }
        ArrayList arrayList = new ArrayList();
        if (z10 && file.listFiles().length > 1) {
            f25853c.e("Multiple pack versions found, using highest version code.", new Object[0]);
        }
        try {
            for (File file2 : file.listFiles()) {
                if (!file2.getName().equals("stale.tmp")) {
                    arrayList.add(Long.valueOf(file2.getName()));
                }
            }
        } catch (NumberFormatException e10) {
            f25853c.c(e10, "Corrupt asset pack directories.", new Object[0]);
        }
        if (arrayList.isEmpty()) {
            return -1L;
        }
        Collections.sort(arrayList);
        return ((Long) arrayList.get(arrayList.size() - 1)).longValue();
    }

    private final File h(String str) {
        return new File(k(), str);
    }

    private final File i(String str, int i10, long j10) {
        return new File(w(str, i10, j10), "merge.tmp");
    }

    private final File j(String str, int i10, long j10) {
        return new File(new File(new File(l(), str), String.valueOf(i10)), String.valueOf(j10));
    }

    private final File k() {
        return new File(this.f25856a.getFilesDir(), "assetpacks");
    }

    private final File l() {
        return new File(k(), "_tmp");
    }

    private final List<File> m() {
        ArrayList arrayList = new ArrayList();
        try {
        } catch (IOException e10) {
            f25853c.b("Could not process directory while scanning installed packs. %s", e10);
        }
        if (k().exists() && k().listFiles() != null) {
            for (File file : k().listFiles()) {
                if (!file.getCanonicalPath().equals(l().getCanonicalPath())) {
                    arrayList.add(file);
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    private static void n(File file) {
        if (file.listFiles() == null || file.listFiles().length <= 1) {
            return;
        }
        long jG = g(file, false);
        for (File file2 : file.listFiles()) {
            if (!file2.getName().equals(String.valueOf(jG)) && !file2.getName().equals("stale.tmp")) {
                o(file2);
            }
        }
    }

    private static boolean o(File file) {
        File[] fileArrListFiles = file.listFiles();
        boolean zO = true;
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                zO &= o(file2);
            }
        }
        if (file.delete()) {
            return zO;
        }
        return false;
    }

    final File A(String str, int i10, long j10, String str2) {
        return new File(B(str, i10, j10, str2), "checkpoint.dat");
    }

    final File B(String str, int i10, long j10, String str2) {
        return new File(y(str, i10, j10), str2);
    }

    final File C(String str, int i10, long j10, String str2) {
        return new File(new File(new File(j(str, i10, j10), "_slices"), "_unverified"), str2);
    }

    final File D(String str, int i10, long j10, String str2) {
        return new File(new File(new File(j(str, i10, j10), "_slices"), "_verified"), str2);
    }

    final String E(String str) throws IOException {
        int length;
        File file = new File(k(), str);
        if (!file.exists()) {
            f25853c.a("Pack not found with pack name: %s", str);
            return null;
        }
        File file2 = new File(file, String.valueOf(this.f25857b.a()));
        if (!file2.exists()) {
            f25853c.a("Pack not found with pack name: %s app version: %s", str, Integer.valueOf(this.f25857b.a()));
            return null;
        }
        File[] fileArrListFiles = file2.listFiles();
        if (fileArrListFiles == null || (length = fileArrListFiles.length) == 0) {
            f25853c.a("No pack version found for pack name: %s app version: %s", str, Integer.valueOf(this.f25857b.a()));
            return null;
        }
        if (length <= 1) {
            return fileArrListFiles[0].getCanonicalPath();
        }
        f25853c.b("Multiple pack versions found for pack name: %s app version: %s", str, Integer.valueOf(this.f25857b.a()));
        return null;
    }

    final Map<String, Long> F() {
        HashMap map = new HashMap();
        Iterator<File> it = m().iterator();
        while (it.hasNext()) {
            String name = it.next().getName();
            int iG = (int) g(h(name), true);
            long jG = g(t(name, iG), true);
            if (u(name, iG, jG).exists()) {
                map.put(name, Long.valueOf(jG));
            }
        }
        return map;
    }

    final Map<String, Long> G() {
        HashMap map = new HashMap();
        for (String str : H().keySet()) {
            map.put(str, Long.valueOf(r(str)));
        }
        return map;
    }

    final Map<String, b> H() {
        HashMap map = new HashMap();
        try {
            for (File file : m()) {
                b bVarS = s(file.getName());
                if (bVarS != null) {
                    map.put(file.getName(), bVarS);
                }
            }
        } catch (IOException e10) {
            f25853c.b("Could not process directory while scanning installed packs: %s", e10);
        }
        return map;
    }

    final void I() {
        for (File file : m()) {
            if (file.listFiles() != null) {
                n(file);
                long jG = g(file, false);
                if (this.f25857b.a() != jG) {
                    try {
                        new File(new File(file, String.valueOf(jG)), "stale.tmp").createNewFile();
                    } catch (IOException unused) {
                        f25853c.b("Could not write staleness marker.", new Object[0]);
                    }
                }
                for (File file2 : file.listFiles()) {
                    n(file2);
                }
            }
        }
    }

    final void J() {
        o(k());
    }

    final void a(String str, int i10, long j10, int i11) throws IOException {
        File fileI = i(str, i10, j10);
        Properties properties = new Properties();
        properties.put("numberOfMerges", String.valueOf(i11));
        fileI.getParentFile().mkdirs();
        fileI.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(fileI);
        properties.store(fileOutputStream, (String) null);
        fileOutputStream.close();
    }

    final void b(String str, int i10, long j10) {
        File fileH = h(str);
        if (fileH.exists()) {
            for (File file : fileH.listFiles()) {
                if (!file.getName().equals(String.valueOf(i10)) && !file.getName().equals("stale.tmp")) {
                    o(file);
                } else if (file.getName().equals(String.valueOf(i10))) {
                    for (File file2 : file.listFiles()) {
                        if (!file2.getName().equals(String.valueOf(j10))) {
                            o(file2);
                        }
                    }
                }
            }
        }
    }

    final void c(List<String> list) {
        int iA = this.f25857b.a();
        for (File file : m()) {
            if (!list.contains(file.getName()) && g(file, true) != iA) {
                o(file);
            }
        }
    }

    final boolean d(String str, int i10, long j10) {
        if (j(str, i10, j10).exists()) {
            return o(j(str, i10, j10));
        }
        return true;
    }

    final boolean e(String str, int i10, long j10) {
        if (u(str, i10, j10).exists()) {
            return o(u(str, i10, j10));
        }
        return true;
    }

    final boolean f(String str) {
        return E(str) != null;
    }

    final int p(String str) {
        return (int) g(h(str), true);
    }

    final int q(String str, int i10, long j10) throws IOException {
        File fileI = i(str, i10, j10);
        if (!fileI.exists()) {
            return 0;
        }
        Properties properties = new Properties();
        FileInputStream fileInputStream = new FileInputStream(fileI);
        try {
            properties.load(fileInputStream);
            fileInputStream.close();
            if (properties.getProperty("numberOfMerges") == null) {
                throw new d1("Merge checkpoint file corrupt.");
            }
            try {
                return Integer.parseInt(properties.getProperty("numberOfMerges"));
            } catch (NumberFormatException e10) {
                throw new d1("Merge checkpoint file corrupt.", e10);
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    final long r(String str) {
        return g(t(str, (int) g(h(str), true)), true);
    }

    final b s(String str) throws IOException {
        String strE = E(str);
        if (strE == null) {
            return null;
        }
        File file = new File(strE, "assets");
        if (file.isDirectory()) {
            return b.d(strE, file.getCanonicalPath());
        }
        f25853c.b("Failed to find assets directory: %s", file);
        return null;
    }

    final File t(String str, int i10) {
        return new File(h(str), String.valueOf(i10));
    }

    final File u(String str, int i10, long j10) {
        return new File(t(str, i10), String.valueOf(j10));
    }

    final File v(String str, int i10, long j10) {
        return new File(u(str, i10, j10), "_metadata");
    }

    final File w(String str, int i10, long j10) {
        return new File(j(str, i10, j10), "_packs");
    }

    final File x(String str, int i10, long j10) {
        return new File(v(str, i10, j10), "properties.dat");
    }

    final File y(String str, int i10, long j10) {
        return new File(new File(j(str, i10, j10), "_slices"), "_metadata");
    }

    final File z(String str, int i10, long j10, String str2) {
        return new File(B(str, i10, j10, str2), "checkpoint_ext.dat");
    }
}
