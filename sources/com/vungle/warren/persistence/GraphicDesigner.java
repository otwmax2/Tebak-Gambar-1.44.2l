package com.vungle.warren.persistence;

import android.util.Log;
import com.vungle.warren.persistence.CacheManager;
import com.vungle.warren.utility.FileUtility;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class GraphicDesigner implements Designer, CacheManager.Listener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f28256b = "GraphicDesigner";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CacheManager f28257a;

    public GraphicDesigner(CacheManager cacheManager) {
        this.f28257a = cacheManager;
        cacheManager.addListener(this);
        FileUtility.printDirectoryTree(getCacheDirectory());
    }

    @Override // com.vungle.warren.persistence.Designer
    public void clearCache() {
        CacheManager cacheManager = this.f28257a;
        if (cacheManager == null || cacheManager.getCache() == null) {
            return;
        }
        File file = new File(this.f28257a.getCache().getPath() + File.separator + "vungle");
        if (file.exists()) {
            try {
                FileUtility.delete(file);
            } catch (IOException e10) {
                Log.e(f28256b, "Failed to delete cached files. Reason: " + e10.getLocalizedMessage());
            }
        }
        if (file.exists()) {
            return;
        }
        file.mkdir();
    }

    @Override // com.vungle.warren.persistence.Designer
    public void deleteAssets(String str) throws IllegalStateException, IOException {
        File[] fileArrListFiles = getCacheDirectory().listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (file.isDirectory() && file.getName().equals(str)) {
                FileUtility.delete(file);
            }
        }
    }

    @Override // com.vungle.warren.persistence.Designer
    public File getAssetDirectory(String str) throws IllegalStateException {
        File file = new File(getCacheDirectory().getPath() + File.separator + str);
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    @Override // com.vungle.warren.persistence.Designer
    public File getCacheDirectory() throws IllegalStateException {
        if (this.f28257a == null) {
            throw new IllegalStateException("Context has expired, cannot continue.");
        }
        File file = new File(this.f28257a.getCache() + File.separator + "vungle");
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    @Override // com.vungle.warren.persistence.CacheManager.Listener
    public void onCacheChanged() {
        CacheManager cacheManager = this.f28257a;
        if (cacheManager == null) {
            return;
        }
        Iterator<File> it = cacheManager.getOldCaches().iterator();
        while (it.hasNext()) {
            try {
                FileUtility.delete(new File(it.next().getPath() + File.separator + "vungle"));
            } catch (IOException e10) {
                Log.e(f28256b, "Failed to delete cached files. Reason: " + e10.getLocalizedMessage());
            }
        }
    }
}
