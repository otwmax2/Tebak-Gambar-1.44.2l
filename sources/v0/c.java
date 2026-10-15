package v0;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import com.facebook.internal.AnalyticsEvents;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* JADX INFO: compiled from: MultiDexExtractor.java */
/* JADX INFO: loaded from: classes.dex */
final class c implements Closeable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final File f35703o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f35704p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final File f35705q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final RandomAccessFile f35706r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final FileChannel f35707s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final FileLock f35708t;

    /* JADX INFO: compiled from: MultiDexExtractor.java */
    class a implements FileFilter {
        a() {
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return !file.getName().equals("MultiDex.lock");
        }
    }

    /* JADX INFO: compiled from: MultiDexExtractor.java */
    private static class b extends File {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public long f35710o;

        public b(File file, String str) {
            super(file, str);
            this.f35710o = -1L;
        }
    }

    c(File file, File file2) throws IOException {
        Log.i("MultiDex", "MultiDexExtractor(" + file.getPath() + ", " + file2.getPath() + ")");
        this.f35703o = file;
        this.f35705q = file2;
        this.f35704p = g(file);
        File file3 = new File(file2, "MultiDex.lock");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.f35706r = randomAccessFile;
        try {
            FileChannel channel = randomAccessFile.getChannel();
            this.f35707s = channel;
            try {
                Log.i("MultiDex", "Blocking on lock " + file3.getPath());
                this.f35708t = channel.lock();
                Log.i("MultiDex", file3.getPath() + " locked");
            } catch (IOException e10) {
                e = e10;
                c(this.f35707s);
                throw e;
            } catch (Error e11) {
                e = e11;
                c(this.f35707s);
                throw e;
            } catch (RuntimeException e12) {
                e = e12;
                c(this.f35707s);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e13) {
            c(this.f35706r);
            throw e13;
        }
    }

    private void b() {
        File[] fileArrListFiles = this.f35705q.listFiles(new a());
        if (fileArrListFiles == null) {
            Log.w("MultiDex", "Failed to list secondary dex dir content (" + this.f35705q.getPath() + ").");
            return;
        }
        for (File file : fileArrListFiles) {
            Log.i("MultiDex", "Trying to delete old file " + file.getPath() + " of size " + file.length());
            if (file.delete()) {
                Log.i("MultiDex", "Deleted old file " + file.getPath());
            } else {
                Log.w("MultiDex", "Failed to delete old file " + file.getPath());
            }
        }
    }

    private static void c(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e10) {
            Log.w("MultiDex", "Failed to close resource", e10);
        }
    }

    private static void d(ZipFile zipFile, ZipEntry zipEntry, File file, String str) throws IOException {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File fileCreateTempFile = File.createTempFile("tmp-" + str, ".zip", file.getParentFile());
        Log.i("MultiDex", "Extracting " + fileCreateTempFile.getPath());
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(fileCreateTempFile)));
            try {
                ZipEntry zipEntry2 = new ZipEntry("classes.dex");
                zipEntry2.setTime(zipEntry.getTime());
                zipOutputStream.putNextEntry(zipEntry2);
                byte[] bArr = new byte[16384];
                for (int i10 = inputStream.read(bArr); i10 != -1; i10 = inputStream.read(bArr)) {
                    zipOutputStream.write(bArr, 0, i10);
                }
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                if (!fileCreateTempFile.setReadOnly()) {
                    throw new IOException("Failed to mark readonly \"" + fileCreateTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
                }
                Log.i("MultiDex", "Renaming to " + file.getPath());
                if (fileCreateTempFile.renameTo(file)) {
                    return;
                }
                throw new IOException("Failed to rename \"" + fileCreateTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
            } catch (Throwable th) {
                zipOutputStream.close();
                throw th;
            }
        } finally {
            c(inputStream);
            fileCreateTempFile.delete();
        }
    }

    private static SharedPreferences e(Context context) {
        return context.getSharedPreferences("multidex.version", Build.VERSION.SDK_INT < 11 ? 0 : 4);
    }

    private static long f(File file) {
        long jLastModified = file.lastModified();
        return jLastModified == -1 ? jLastModified - 1 : jLastModified;
    }

    private static long g(File file) throws IOException {
        long jC = d.c(file);
        return jC == -1 ? jC - 1 : jC;
    }

    private static boolean h(Context context, File file, long j10, String str) {
        SharedPreferences sharedPreferencesE = e(context);
        if (sharedPreferencesE.getLong(str + "timestamp", -1L) == f(file)) {
            if (sharedPreferencesE.getLong(str + "crc", -1L) == j10) {
                return false;
            }
        }
        return true;
    }

    private List<b> j(Context context, String str) throws IOException {
        Log.i("MultiDex", "loading existing secondary dex files");
        String str2 = this.f35703o.getName() + ".classes";
        SharedPreferences sharedPreferencesE = e(context);
        int i10 = sharedPreferencesE.getInt(str + "dex.number", 1);
        ArrayList arrayList = new ArrayList(i10 + (-1));
        int i11 = 2;
        while (i11 <= i10) {
            b bVar = new b(this.f35705q, str2 + i11 + ".zip");
            if (!bVar.isFile()) {
                throw new IOException("Missing extracted secondary dex file '" + bVar.getPath() + "'");
            }
            bVar.f35710o = g(bVar);
            long j10 = sharedPreferencesE.getLong(str + "dex.crc." + i11, -1L);
            long j11 = sharedPreferencesE.getLong(str + "dex.time." + i11, -1L);
            long jLastModified = bVar.lastModified();
            if (j11 == jLastModified) {
                String str3 = str2;
                SharedPreferences sharedPreferences = sharedPreferencesE;
                if (j10 == bVar.f35710o) {
                    arrayList.add(bVar);
                    i11++;
                    sharedPreferencesE = sharedPreferences;
                    str2 = str3;
                }
            }
            throw new IOException("Invalid extracted dex: " + bVar + " (key \"" + str + "\"), expected modification time: " + j11 + ", modification time: " + jLastModified + ", expected crc: " + j10 + ", file crc: " + bVar.f35710o);
        }
        return arrayList;
    }

    private List<b> k() throws IOException {
        boolean z10;
        String str = this.f35703o.getName() + ".classes";
        b();
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.f35703o);
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            int i10 = 2;
            while (entry != null) {
                b bVar = new b(this.f35705q, str + i10 + ".zip");
                arrayList.add(bVar);
                Log.i("MultiDex", "Extraction is needed for file " + bVar);
                int i11 = 0;
                boolean z11 = false;
                while (i11 < 3 && !z11) {
                    int i12 = i11 + 1;
                    d(zipFile, entry, bVar, str);
                    try {
                        bVar.f35710o = g(bVar);
                        z10 = true;
                    } catch (IOException e10) {
                        Log.w("MultiDex", "Failed to read crc from " + bVar.getAbsolutePath(), e10);
                        z10 = false;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Extraction ");
                    sb.append(z10 ? AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED : "failed");
                    sb.append(" '");
                    sb.append(bVar.getAbsolutePath());
                    sb.append("': length ");
                    sb.append(bVar.length());
                    sb.append(" - crc: ");
                    sb.append(bVar.f35710o);
                    Log.i("MultiDex", sb.toString());
                    if (!z10) {
                        bVar.delete();
                        if (bVar.exists()) {
                            Log.w("MultiDex", "Failed to delete corrupted secondary dex '" + bVar.getPath() + "'");
                        }
                    }
                    z11 = z10;
                    i11 = i12;
                }
                if (!z11) {
                    throw new IOException("Could not create zip file " + bVar.getAbsolutePath() + " for secondary dex (" + i10 + ")");
                }
                i10++;
                entry = zipFile.getEntry("classes" + i10 + ".dex");
            }
            try {
                zipFile.close();
            } catch (IOException e11) {
                Log.w("MultiDex", "Failed to close resource", e11);
            }
            return arrayList;
        } finally {
        }
    }

    private static void l(Context context, String str, long j10, long j11, List<b> list) {
        SharedPreferences.Editor editorEdit = e(context).edit();
        editorEdit.putLong(str + "timestamp", j10);
        editorEdit.putLong(str + "crc", j11);
        editorEdit.putInt(str + "dex.number", list.size() + 1);
        int i10 = 2;
        for (b bVar : list) {
            editorEdit.putLong(str + "dex.crc." + i10, bVar.f35710o);
            editorEdit.putLong(str + "dex.time." + i10, bVar.lastModified());
            i10++;
        }
        editorEdit.commit();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f35708t.release();
        this.f35707s.close();
        this.f35706r.close();
    }

    List<? extends File> i(Context context, String str, boolean z10) throws IOException {
        List<b> listK;
        List<b> listJ;
        Log.i("MultiDex", "MultiDexExtractor.load(" + this.f35703o.getPath() + ", " + z10 + ", " + str + ")");
        if (!this.f35708t.isValid()) {
            throw new IllegalStateException("MultiDexExtractor was closed");
        }
        if (!z10 && !h(context, this.f35703o, this.f35704p, str)) {
            try {
                listJ = j(context, str);
            } catch (IOException e10) {
                Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", e10);
                listK = k();
                l(context, str, f(this.f35703o), this.f35704p, listK);
                listJ = listK;
            }
            Log.i("MultiDex", "load found " + listJ.size() + " secondary dex files");
            return listJ;
        }
        if (z10) {
            Log.i("MultiDex", "Forced extraction must be performed.");
        } else {
            Log.i("MultiDex", "Detected that extraction must be performed.");
        }
        listK = k();
        l(context, str, f(this.f35703o), this.f35704p, listK);
        listJ = listK;
        Log.i("MultiDex", "load found " + listJ.size() + " secondary dex files");
        return listJ;
    }
}
