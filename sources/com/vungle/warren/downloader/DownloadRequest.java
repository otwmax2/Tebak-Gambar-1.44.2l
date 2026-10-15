package com.vungle.warren.downloader;

import android.text.TextUtils;
import com.vungle.warren.downloader.Downloader;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AtomicReference<AssetPriority> f28054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f28055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AtomicBoolean f28056c;
    public final String cookieString;
    public final int networkType;
    public final String path;
    public final boolean pauseOnConnectionLost;
    public final String url;

    public @interface Priority {
        public static final int CRITICAL = -2147483647;
        public static final int HIGH = 1;
        public static final int HIGHEST = 0;
        public static final int LOWEST = Integer.MAX_VALUE;
    }

    public DownloadRequest(String str, String str2) {
        this(3, 0, str, str2, false, (String) null);
    }

    void a() {
        this.f28056c.set(true);
    }

    boolean b() {
        return this.f28056c.get();
    }

    public AssetPriority getPriority() {
        return this.f28054a.get();
    }

    public void setPriority(AssetPriority assetPriority) {
        this.f28054a.set(assetPriority);
    }

    public String toString() {
        return "DownloadRequest{networkType=" + this.networkType + ", priority=" + this.f28054a + ", url='" + this.url + "', path='" + this.path + "', pauseOnConnectionLost=" + this.pauseOnConnectionLost + ", id='" + this.f28055b + "', cookieString='" + this.cookieString + "', cancelled=" + this.f28056c + '}';
    }

    public DownloadRequest(String str, String str2, String str3) {
        this(3, 0, str, str2, false, str3);
    }

    public DownloadRequest(@Downloader.NetworkType int i10, @Priority int i11, String str, String str2, boolean z10, String str3) {
        this(i10, new AssetPriority(i11, 0), str, str2, z10, str3);
    }

    public DownloadRequest(@Downloader.NetworkType int i10, AssetPriority assetPriority, String str, String str2, boolean z10, String str3) {
        this.f28054a = new AtomicReference<>();
        this.f28056c = new AtomicBoolean(false);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
            this.networkType = i10;
            this.f28054a.set(assetPriority);
            this.url = str;
            this.path = str2;
            this.f28055b = UUID.nameUUIDFromBytes((str2 + "_" + str).getBytes()).toString();
            this.pauseOnConnectionLost = z10;
            this.cookieString = str3;
            return;
        }
        throw new IllegalArgumentException("Url or path is empty");
    }
}
