package com.vungle.warren.downloader;

import com.vungle.warren.downloader.DownloadRequest;

/* JADX INFO: loaded from: classes2.dex */
public class AssetPriority implements Comparable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Integer f28045o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Integer f28046p;

    public AssetPriority(int i10, @DownloadRequest.Priority int i11) {
        this.f28045o = Integer.valueOf(i10);
        this.f28046p = Integer.valueOf(i11);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (!(obj instanceof AssetPriority)) {
            return -1;
        }
        AssetPriority assetPriority = (AssetPriority) obj;
        int iCompareTo = this.f28045o.compareTo(assetPriority.f28045o);
        return iCompareTo == 0 ? this.f28046p.compareTo(assetPriority.f28046p) : iCompareTo;
    }

    public String toString() {
        return "AssetPriority{firstPriority=" + this.f28045o + ", secondPriority=" + this.f28046p + '}';
    }
}
