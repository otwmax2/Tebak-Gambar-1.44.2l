package com.vungle.warren.downloader;

import androidx.annotation.Keep;
import androidx.core.util.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
@Keep
class DownloadRequestMediator {
    public final String filePath;
    public final boolean isCacheable;
    public final String key;
    public final String metaPath;
    public final AssetPriority priority;
    public final String url;
    private AtomicInteger statusAtomic = new AtomicInteger(0);
    private Map<String, d<DownloadRequest, AssetDownloadListener>> children = new ConcurrentHashMap(1);
    private final ReentrantLock lock = new ReentrantLock();
    private AtomicBoolean connectedAtomic = new AtomicBoolean(true);
    private AtomicReference<Runnable> runnable = new AtomicReference<>();

    DownloadRequestMediator(DownloadRequest downloadRequest, AssetDownloadListener assetDownloadListener, String str, String str2, boolean z10, String str3) {
        this.url = downloadRequest.url;
        this.filePath = str;
        this.metaPath = str2;
        this.isCacheable = z10;
        this.key = str3;
        this.priority = downloadRequest.getPriority();
        this.children.put(downloadRequest.f28055b, new d<>(downloadRequest, assetDownloadListener));
    }

    synchronized void add(DownloadRequest downloadRequest, AssetDownloadListener assetDownloadListener) {
        this.children.put(downloadRequest.f28055b, new d<>(downloadRequest, assetDownloadListener));
    }

    AssetPriority getPriority() {
        AssetPriority priority;
        AssetPriority assetPriority = new AssetPriority(Integer.MAX_VALUE, Integer.MAX_VALUE);
        Iterator<d<DownloadRequest, AssetDownloadListener>> it = values().iterator();
        while (it.hasNext()) {
            DownloadRequest downloadRequest = it.next().f2381a;
            if (downloadRequest != null && (priority = downloadRequest.getPriority()) != null && assetPriority.compareTo(priority) >= 0) {
                assetPriority = priority;
            }
        }
        return assetPriority;
    }

    public Runnable getRunnable() {
        return this.runnable.get();
    }

    @Status
    public int getStatus() {
        return this.statusAtomic.get();
    }

    boolean is(@Status int i10) {
        return this.statusAtomic.get() == i10;
    }

    boolean isConnected() {
        return this.connectedAtomic.get();
    }

    boolean isPausable() {
        Iterator<d<DownloadRequest, AssetDownloadListener>> it = values().iterator();
        while (it.hasNext()) {
            DownloadRequest downloadRequest = it.next().f2381a;
            if (downloadRequest != null && downloadRequest.pauseOnConnectionLost) {
                return true;
            }
        }
        return false;
    }

    void lock() {
        this.lock.lock();
    }

    synchronized d<DownloadRequest, AssetDownloadListener> remove(DownloadRequest downloadRequest) {
        return this.children.remove(downloadRequest.f28055b);
    }

    synchronized List<DownloadRequest> requests() {
        ArrayList arrayList;
        List<d<DownloadRequest, AssetDownloadListener>> listValues = values();
        arrayList = new ArrayList();
        Iterator<d<DownloadRequest, AssetDownloadListener>> it = listValues.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().f2381a);
        }
        return arrayList;
    }

    void set(@Status int i10) {
        if (this.statusAtomic.get() == 3) {
            return;
        }
        this.statusAtomic.set(i10);
    }

    void setConnected(boolean z10) {
        this.connectedAtomic.set(z10);
    }

    public void setRunnable(Runnable runnable) {
        this.runnable.set(runnable);
    }

    void unlock() {
        this.lock.unlock();
    }

    synchronized List<d<DownloadRequest, AssetDownloadListener>> values() {
        return new ArrayList(this.children.values());
    }
}
