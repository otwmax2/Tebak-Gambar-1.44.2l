package com.vungle.warren.downloader;

import com.vungle.warren.persistence.CacheManager;
import com.vungle.warren.utility.FileUtility;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LRUCachePolicy implements CachePolicy<File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CacheManager f28057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f28058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LinkedHashSet<File> f28059c = new LinkedHashSet<>();

    public LRUCachePolicy(CacheManager cacheManager, String str) {
        this.f28057a = cacheManager;
        this.f28058b = str;
    }

    private File a() {
        File file = new File(this.f28057a.getCache(), this.f28058b);
        if (file.exists() && !file.isDirectory()) {
            FileUtility.deleteAndLogIfFailed(file);
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, "cache_policy_journal");
    }

    @Override // com.vungle.warren.downloader.CachePolicy
    public void clean() {
        this.f28059c.clear();
    }

    @Override // com.vungle.warren.downloader.CachePolicy
    public List<File> getOrderedCacheItems() {
        return new ArrayList(this.f28059c);
    }

    @Override // com.vungle.warren.downloader.CachePolicy
    public void load() {
        File fileA = a();
        Serializable serializable = (Serializable) FileUtility.readSerializable(fileA);
        if (serializable == null) {
            return;
        }
        if (serializable instanceof Collection) {
            this.f28059c.addAll((Collection) serializable);
        } else {
            FileUtility.deleteAndLogIfFailed(fileA);
        }
    }

    @Override // com.vungle.warren.downloader.CachePolicy
    public void save() throws Throwable {
        FileUtility.writeSerializable(a(), this.f28059c);
    }

    @Override // com.vungle.warren.downloader.CachePolicy
    public void put(File file, long j10) {
        if (j10 > 0) {
            this.f28059c.remove(file);
        }
        this.f28059c.add(file);
    }

    @Override // com.vungle.warren.downloader.CachePolicy
    public void remove(File file) {
        this.f28059c.remove(file);
    }
}
