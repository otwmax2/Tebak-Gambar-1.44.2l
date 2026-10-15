package com.vungle.warren.downloader;

import android.util.Base64;
import android.util.Log;
import com.facebook.share.internal.ShareInternalUtility;
import com.vungle.warren.SizeProvider;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.persistence.CacheManager;
import com.vungle.warren.utility.FileUtility;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class CleverCache implements DownloaderCache {
    public static final String CACHE_TOUCH_JOURNAL = "cache_touch_timestamp";
    public static final String CC_DIR = "clever_cache";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f28047g = "CleverCache";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CacheManager f28049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CachePolicy<File> f28050c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f28051d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SizeProvider f28052e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<File, Long> f28048a = new HashMap<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<File, Integer> f28053f = new ConcurrentHashMap();

    public CleverCache(CacheManager cacheManager, CachePolicy<File> cachePolicy, SizeProvider sizeProvider, long j10) {
        this.f28049b = cacheManager;
        this.f28050c = cachePolicy;
        this.f28052e = sizeProvider;
        this.f28051d = Math.max(0L, j10);
    }

    private synchronized void a() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f28051d;
        File[] fileArrListFiles = getAssetsDir().listFiles();
        HashSet hashSet = new HashSet(this.f28048a.keySet());
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            for (File file : fileArrListFiles) {
                long cacheUpdateTimestamp = getCacheUpdateTimestamp(file);
                hashSet.remove(file);
                if (!e(file) && (cacheUpdateTimestamp == 0 || cacheUpdateTimestamp <= jCurrentTimeMillis)) {
                    if (deleteContents(file)) {
                        this.f28048a.remove(file);
                        this.f28050c.remove(file);
                    }
                    Log.d(f28047g, "Deleted expired file " + file);
                }
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                this.f28048a.remove((File) it.next());
            }
            this.f28050c.save();
            g();
        }
    }

    private File b() {
        File file = new File(this.f28049b.getCache(), CC_DIR);
        if (!file.isDirectory()) {
            FileUtility.deleteAndLogIfFailed(file);
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private File c() {
        return new File(b(), CACHE_TOUCH_JOURNAL);
    }

    private void d(List<File> list) {
        File metaDir = getMetaDir();
        File[] fileArrListFiles = getAssetsDir().listFiles();
        if (fileArrListFiles != null) {
            ArrayList<File> arrayList = new ArrayList(Arrays.asList(fileArrListFiles));
            arrayList.removeAll(list);
            arrayList.remove(metaDir);
            for (File file : arrayList) {
                deleteContents(file);
                Log.d(f28047g, "Deleted non tracked file " + file);
            }
        }
    }

    private boolean e(File file) {
        Integer num = this.f28053f.get(file);
        if (num == null || num.intValue() <= 0) {
            return false;
        }
        Log.d(f28047g, "File is tracked and protected : " + file);
        return true;
    }

    private void f() {
        Serializable serializable = (Serializable) FileUtility.readSerializable(c());
        if (serializable instanceof HashMap) {
            try {
                this.f28048a.putAll((HashMap) serializable);
            } catch (ClassCastException e10) {
                VungleLogger.error("CleverCache#loadTouchTimestamps; loadAd sequence", String.format("Error %1$s occured; old map is not File -> Long", e10));
                FileUtility.deleteAndLogIfFailed(c());
            }
        }
    }

    private void g() throws Throwable {
        FileUtility.writeSerializable(c(), new HashMap(this.f28048a));
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized void clear() {
        List<File> orderedCacheItems = this.f28050c.getOrderedCacheItems();
        int i10 = 0;
        d(orderedCacheItems);
        for (File file : orderedCacheItems) {
            if (file != null && !e(file) && deleteContents(file)) {
                i10++;
                this.f28050c.remove(file);
                this.f28048a.remove(file);
            }
        }
        if (i10 > 0) {
            this.f28050c.save();
            g();
        }
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized boolean deleteAndRemove(File file) {
        if (!deleteContents(file)) {
            return false;
        }
        this.f28048a.remove(file);
        this.f28050c.remove(file);
        this.f28050c.save();
        g();
        return true;
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized boolean deleteContents(File file) {
        boolean z10;
        try {
            FileUtility.delete(file);
        } catch (IOException e10) {
            e = e10;
            z10 = false;
        }
        try {
            FileUtility.delete(getMetaFile(file));
            return true;
        } catch (IOException e11) {
            e = e11;
            z10 = true;
            Object[] objArr = new Object[3];
            objArr[0] = z10 ? "meta" : ShareInternalUtility.STAGING_PARAM;
            objArr[1] = file.getPath();
            objArr[2] = e;
            VungleLogger.error("CleverCache#deleteContents; loadAd sequence", String.format("Cannot delete %1$s for file %2$s; Error %3$s occured", objArr));
            return false;
        }
    }

    public synchronized File getAssetsDir() {
        File file;
        file = new File(b(), "assets");
        if (!file.isDirectory() && file.exists()) {
            FileUtility.deleteAndLogIfFailed(file);
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized long getCacheUpdateTimestamp(File file) {
        Long l10;
        l10 = this.f28048a.get(file);
        return l10 == null ? file.lastModified() : l10.longValue();
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized File getFile(String str) throws IOException {
        File file;
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                messageDigest.update(str.getBytes("UTF-8"));
                file = new File(getAssetsDir(), Base64.encodeToString(messageDigest.digest(), 10));
                this.f28050c.put(file, 0L);
            } catch (UnsupportedEncodingException e10) {
                VungleLogger.error("CleverCache#getFile; loadAd sequence", "cannot encode url with charset = UTF-8");
                throw new IOException(e10);
            }
        } catch (NoSuchAlgorithmException e11) {
            VungleLogger.error("CleverCache#getFile; loadAd sequence", "cannot get instance of MessageDigest with algorithm SHA-256");
            throw new IOException(e11);
        }
        return file;
    }

    public synchronized File getMetaDir() {
        File file;
        file = new File(getAssetsDir(), "meta");
        if (!file.isDirectory()) {
            FileUtility.deleteAndLogIfFailed(file);
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized File getMetaFile(File file) {
        return new File(getMetaDir(), file.getName() + ".vng_meta");
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized void init() {
        this.f28050c.load();
        f();
        a();
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized void onCacheHit(File file, long j10) {
        this.f28050c.put(file, j10);
        this.f28050c.save();
        Log.d(f28047g, "Cache hit " + file + " cache touch updated");
        purge();
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized List<File> purge() {
        long targetSize = this.f28052e.getTargetSize();
        long size = FileUtility.size(getAssetsDir());
        String str = f28047g;
        Log.d(str, "Purge check current cache total: " + size + " target: " + targetSize);
        if (size < targetSize) {
            return Collections.emptyList();
        }
        Log.d(str, "Purge start");
        ArrayList arrayList = new ArrayList();
        List<File> orderedCacheItems = this.f28050c.getOrderedCacheItems();
        d(orderedCacheItems);
        long size2 = FileUtility.size(getAssetsDir());
        if (size2 < targetSize) {
            Log.d(str, "Cleaned up not tracked files, size is ok");
            return Collections.emptyList();
        }
        Iterator<File> it = orderedCacheItems.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            File next = it.next();
            if (next != null && !e(next)) {
                long length = next.length();
                if (deleteContents(next)) {
                    size2 -= length;
                    arrayList.add(next);
                    String str2 = f28047g;
                    Log.d(str2, "Deleted file: " + next.getName() + " size: " + length + " total: " + size2 + " target: " + targetSize);
                    this.f28050c.remove(next);
                    this.f28048a.remove(next);
                    if (size2 < targetSize) {
                        targetSize = this.f28052e.getTargetSize();
                        if (size2 < targetSize) {
                            Log.d(str2, "Cleaned enough total: " + size2 + " target: " + targetSize);
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        if (arrayList.size() > 0) {
            this.f28050c.save();
            g();
        }
        Log.d(f28047g, "Purge complete");
        return arrayList;
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized void setCacheLastUpdateTimestamp(File file, long j10) {
        this.f28048a.put(file, Long.valueOf(j10));
        g();
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized void startTracking(File file) {
        Integer num = this.f28053f.get(file);
        this.f28050c.put(file, 0L);
        this.f28050c.save();
        int iValueOf = (num == null || num.intValue() <= 0) ? 1 : Integer.valueOf(num.intValue() + 1);
        this.f28053f.put(file, iValueOf);
        Log.d(f28047g, "Start tracking file: " + file + " ref count " + iValueOf);
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized void stopTracking(File file) {
        if (this.f28053f.get(file) == null) {
            this.f28053f.remove(file);
            return;
        }
        Integer numValueOf = Integer.valueOf(r0.intValue() - 1);
        if (numValueOf.intValue() <= 0) {
            this.f28053f.remove(file);
        }
        Log.d(f28047g, "Stop tracking file: " + file + " ref count " + numValueOf);
    }
}
