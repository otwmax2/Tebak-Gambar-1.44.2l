package androidx.room;

import android.content.Context;
import android.util.Log;
import androidx.room.h0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: SQLiteCopyOpenHelper.java */
/* JADX INFO: loaded from: classes.dex */
class j0 implements b1.h, j {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f4126o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f4127p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final File f4128q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Callable<InputStream> f4129r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f4130s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final b1.h f4131t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private i f4132u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f4133v;

    j0(Context context, String str, File file, Callable<InputStream> callable, int i10, b1.h hVar) {
        this.f4126o = context;
        this.f4127p = str;
        this.f4128q = file;
        this.f4129r = callable;
        this.f4130s = i10;
        this.f4131t = hVar;
    }

    private void c(File file, boolean z10) throws IOException {
        ReadableByteChannel readableByteChannelNewChannel;
        if (this.f4127p != null) {
            readableByteChannelNewChannel = Channels.newChannel(this.f4126o.getAssets().open(this.f4127p));
        } else if (this.f4128q != null) {
            readableByteChannelNewChannel = new FileInputStream(this.f4128q).getChannel();
        } else {
            Callable<InputStream> callable = this.f4129r;
            if (callable == null) {
                throw new IllegalStateException("copyFromAssetPath, copyFromFile and copyFromInputStream are all null!");
            }
            try {
                readableByteChannelNewChannel = Channels.newChannel(callable.call());
            } catch (Exception e10) {
                throw new IOException("inputStreamCallable exception on call", e10);
            }
        }
        File fileCreateTempFile = File.createTempFile("room-copy-helper", ".tmp", this.f4126o.getCacheDir());
        fileCreateTempFile.deleteOnExit();
        z0.d.a(readableByteChannelNewChannel, new FileOutputStream(fileCreateTempFile).getChannel());
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories for " + file.getAbsolutePath());
        }
        d(fileCreateTempFile, z10);
        if (fileCreateTempFile.renameTo(file)) {
            return;
        }
        throw new IOException("Failed to move intermediate file (" + fileCreateTempFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
    }

    private void d(File file, boolean z10) {
        i iVar = this.f4132u;
        if (iVar != null) {
            h0.e eVar = iVar.f4105f;
        }
    }

    private void f(boolean z10) {
        String databaseName = getDatabaseName();
        File databasePath = this.f4126o.getDatabasePath(databaseName);
        i iVar = this.f4132u;
        z0.a aVar = new z0.a(databaseName, this.f4126o.getFilesDir(), iVar == null || iVar.f4112m);
        try {
            aVar.b();
            if (!databasePath.exists()) {
                try {
                    c(databasePath, z10);
                    aVar.c();
                    return;
                } catch (IOException e10) {
                    throw new RuntimeException("Unable to copy database file.", e10);
                }
            }
            if (this.f4132u == null) {
                aVar.c();
                return;
            }
            try {
                int iC = z0.c.c(databasePath);
                int i10 = this.f4130s;
                if (iC == i10) {
                    aVar.c();
                    return;
                }
                if (this.f4132u.a(iC, i10)) {
                    aVar.c();
                    return;
                }
                if (this.f4126o.deleteDatabase(databaseName)) {
                    try {
                        c(databasePath, z10);
                    } catch (IOException e11) {
                        Log.w("ROOM", "Unable to copy database file.", e11);
                    }
                } else {
                    Log.w("ROOM", "Failed to delete database file (" + databaseName + ") for a copy destructive migration.");
                }
                aVar.c();
                return;
            } catch (IOException e12) {
                Log.w("ROOM", "Unable to read database version.", e12);
                aVar.c();
                return;
            }
        } catch (Throwable th) {
            aVar.c();
            throw th;
        }
        aVar.c();
        throw th;
    }

    @Override // b1.h
    public synchronized b1.g K1() {
        if (!this.f4133v) {
            f(true);
            this.f4133v = true;
        }
        return this.f4131t.K1();
    }

    @Override // androidx.room.j
    public b1.h b() {
        return this.f4131t;
    }

    @Override // b1.h, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f4131t.close();
        this.f4133v = false;
    }

    void e(i iVar) {
        this.f4132u = iVar;
    }

    @Override // b1.h
    public String getDatabaseName() {
        return this.f4131t.getDatabaseName();
    }

    @Override // b1.h
    public void setWriteAheadLoggingEnabled(boolean z10) {
        this.f4131t.setWriteAheadLoggingEnabled(z10);
    }
}
