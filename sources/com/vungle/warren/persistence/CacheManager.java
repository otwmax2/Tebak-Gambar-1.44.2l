package com.vungle.warren.persistence;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Environment;
import android.os.FileObserver;
import android.os.StatFs;
import android.util.Log;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.utility.CollectionsConcurrencyUtil;
import com.vungle.warren.utility.FileUtility;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class CacheManager {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f28236h = "CacheManager";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f28237a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FilePreferences f28238b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f28240d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f28242f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<Listener> f28239c = new HashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<File> f28241e = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<FileObserver> f28243g = new ArrayList();

    public interface Listener {
        void onCacheChanged();
    }

    public CacheManager(Context context, FilePreferences filePreferences) {
        this.f28237a = context;
        this.f28238b = filePreferences;
        filePreferences.addSharedPrefsKey("cache_path", "cache_paths").apply();
    }

    private void b() {
        File file = this.f28240d;
        if (file != null && file.exists() && this.f28240d.isDirectory() && this.f28240d.canWrite()) {
            return;
        }
        f();
    }

    private static void c(File file) {
        if (file.exists() && file.isFile()) {
            FileUtility.deleteAndLogIfFailed(file);
        }
    }

    @SuppressLint({"NewApi"})
    private long d(int i10) {
        File cache = getCache();
        if (cache == null) {
            return -1L;
        }
        StatFs statFs = null;
        try {
            statFs = new StatFs(cache.getPath());
        } catch (IllegalArgumentException e10) {
            Log.w(f28236h, "Failed to get available bytes", e10);
            if (i10 > 0) {
                return d(i10 - 1);
            }
        }
        if (statFs != null) {
            return statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
        }
        return -1L;
    }

    private synchronized void e(File file) {
        if (file == null) {
            return;
        }
        this.f28243g.clear();
        this.f28243g.add(new FileObserver(file.getPath(), 1024) { // from class: com.vungle.warren.persistence.CacheManager.1
            @Override // android.os.FileObserver
            public void onEvent(int i10, String str) {
                stopWatching();
                CacheManager.this.f();
            }
        });
        while (file.getParent() != null) {
            final String name = file.getName();
            this.f28243g.add(new FileObserver(file.getParent(), 256) { // from class: com.vungle.warren.persistence.CacheManager.2
                @Override // android.os.FileObserver
                public void onEvent(int i10, String str) {
                    stopWatching();
                    if (name.equals(str)) {
                        CacheManager.this.f();
                    }
                }
            });
            file = file.getParentFile();
        }
        Iterator<FileObserver> it = this.f28243g.iterator();
        while (it.hasNext()) {
            try {
                it.next().startWatching();
            } catch (Exception e10) {
                VungleLogger.warn(true, f28236h, "ExceptionContext", Log.getStackTraceString(e10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public synchronized void f() {
        File file;
        boolean z10;
        File parentFile;
        File file2 = null;
        if (this.f28240d == null) {
            String string = this.f28238b.getString("cache_path", null);
            this.f28240d = string != null ? new File(string) : null;
        }
        File externalFilesDir = this.f28237a.getExternalFilesDir(null);
        File filesDir = this.f28237a.getFilesDir();
        boolean z11 = Environment.getExternalStorageState().equals("mounted") && externalFilesDir != null;
        ArrayList arrayList = new ArrayList();
        if (z11 && (parentFile = externalFilesDir.getParentFile()) != null) {
            arrayList.add(new File(parentFile, "no_backup"));
        }
        arrayList.add(this.f28237a.getNoBackupFilesDir());
        if (z11) {
            arrayList.add(externalFilesDir);
        }
        arrayList.add(filesDir);
        Iterator it = arrayList.iterator();
        boolean zMkdirs = false;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            File file3 = new File((File) it.next(), "vungle_cache");
            c(file3);
            if (file3.exists()) {
                z10 = file3.isDirectory() && file3.canWrite();
            } else {
                zMkdirs = file3.mkdirs();
                z10 = zMkdirs;
            }
            if (z10) {
                file2 = file3;
                break;
            }
        }
        File cacheDir = this.f28237a.getCacheDir();
        HashSet<String> stringSet = this.f28238b.getStringSet("cache_paths", new HashSet<>());
        if (file2 != null) {
            CollectionsConcurrencyUtil.addToSet(stringSet, file2.getPath());
        }
        CollectionsConcurrencyUtil.addToSet(stringSet, cacheDir.getPath());
        this.f28238b.put("cache_paths", stringSet).apply();
        this.f28241e.clear();
        for (String str : stringSet) {
            if (file2 == null || !file2.getPath().equals(str)) {
                this.f28241e.add(new File(str));
            }
        }
        if (zMkdirs || !((file2 == null || file2.equals(this.f28240d)) && ((file = this.f28240d) == null || file.equals(file2)))) {
            this.f28240d = file2;
            if (file2 != null) {
                this.f28238b.put("cache_path", file2.getPath()).apply();
            }
            Iterator<Listener> it2 = this.f28239c.iterator();
            while (it2.hasNext()) {
                it2.next().onCacheChanged();
            }
            this.f28242f = true;
            for (File file4 : this.f28241e) {
                if (!file4.equals(cacheDir)) {
                    try {
                        FileUtility.delete(file4);
                    } catch (IOException unused) {
                        VungleLogger.error(true, f28236h, "CacheManager", "Can't remove old cache:" + file4.getPath());
                    }
                }
            }
            e(externalFilesDir);
        } else {
            e(externalFilesDir);
        }
    }

    public synchronized void addListener(Listener listener) {
        b();
        this.f28239c.add(listener);
        if (this.f28242f) {
            listener.onCacheChanged();
        }
    }

    public long getBytesAvailable() {
        return d(1);
    }

    public synchronized File getCache() {
        b();
        return this.f28240d;
    }

    public synchronized List<File> getOldCaches() {
        b();
        return this.f28241e;
    }

    public synchronized void removeListener(Listener listener) {
        this.f28239c.remove(listener);
    }
}
