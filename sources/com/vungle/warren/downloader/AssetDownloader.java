package com.vungle.warren.downloader;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.util.d;
import com.facebook.internal.AnalyticsEvents;
import com.vungle.warren.AdLoader;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.downloader.AssetDownloadListener;
import com.vungle.warren.downloader.DownloadRequest;
import com.vungle.warren.utility.FileUtility;
import com.vungle.warren.utility.NetworkProvider;
import ja.a0;
import ja.c0;
import ja.d0;
import ja.s;
import ja.x;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.SSLException;
import na.e;
import na.h;
import okio.l;
import okio.n;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"LogNotTimber"})
public class AssetDownloader implements Downloader {
    public static final long VERIFICATION_WINDOW = TimeUnit.HOURS.toMillis(24);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f28011p = AssetDownloader.class.getSimpleName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DownloaderCache f28012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f28013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f28014c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f28015d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f28016e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final NetworkProvider f28017f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ThreadPoolExecutor f28018g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final x f28019h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ExecutorService f28020i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Map<String, DownloadRequestMediator> f28021j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<DownloadRequest> f28022k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Object f28023l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private volatile int f28024m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f28025n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final NetworkProvider.NetworkListener f28026o;

    public @interface NetworkType {
        public static final int ANY = 3;
        public static final int CELLULAR = 1;
        public static final int WIFI = 2;
    }

    public AssetDownloader(int i10, NetworkProvider networkProvider, ExecutorService executorService) {
        this(null, 0L, i10, networkProvider, executorService);
    }

    private void E() {
        Log.d(f28011p, "Adding network listner");
        this.f28017f.addListener(this.f28026o);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(long j10, File file, HashMap<String, String> map, a0.a aVar) {
        aVar.a("Accept-Encoding", "identity");
        if (!file.exists() || map.isEmpty()) {
            return;
        }
        String str = map.get("ETag");
        String str2 = map.get("Last-Modified");
        if (Boolean.parseBoolean(map.get("DOWNLOAD_COMPLETE"))) {
            if (!TextUtils.isEmpty(str)) {
                aVar.a("If-None-Match", str);
            }
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            aVar.a("If-Modified-Since", str2);
            return;
        }
        if ("bytes".equalsIgnoreCase(map.get("Accept-Ranges"))) {
            if (map.get("Content-Encoding") == null || "identity".equalsIgnoreCase(map.get("Content-Encoding"))) {
                aVar.a("Range", "bytes=" + j10 + "-");
                if (!TextUtils.isEmpty(str)) {
                    aVar.a("If-Range", str);
                } else {
                    if (TextUtils.isEmpty(str2)) {
                        return;
                    }
                    aVar.a("If-Range", str2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(File file, File file2, s sVar) throws IOException {
        String strC = sVar.c("Content-Encoding");
        if (strC == null || "gzip".equalsIgnoreCase(strC) || "identity".equalsIgnoreCase(strC)) {
            return;
        }
        L(file, file2, false);
        VungleLogger.error("AssetDownloader#checkEncoding; loadAd sequence", String.format("unknown %1$s %2$s ", "Content-Encoding", strC));
        throw new IOException("Unknown Content-Encoding");
    }

    private void H(File file, File file2, d<DownloadRequest, AssetDownloadListener> dVar) throws Throwable {
        FileOutputStream fileOutputStream;
        IOException e10;
        FileInputStream fileInputStream;
        if (file2.exists()) {
            FileUtility.deleteAndLogIfFailed(file2);
        }
        if (file2.getParentFile() != null && !file2.getParentFile().exists()) {
            file2.getParentFile().mkdirs();
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e11) {
            fileOutputStream = null;
            e10 = e11;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
            FileUtility.closeQuietly(fileInputStream2);
            FileUtility.closeQuietly(fileOutputStream);
            throw th;
        }
        try {
            fileOutputStream = new FileOutputStream(file2);
            try {
                FileChannel channel = fileInputStream.getChannel();
                channel.transferTo(0L, channel.size(), fileOutputStream.getChannel());
                Log.d(f28011p, "Copying: finished " + dVar.f2381a.url + " copying to " + file2.getPath());
            } catch (IOException e12) {
                e10 = e12;
                VungleLogger.error("AssetDownloader#copyToDestination; loadAd sequence", String.format("cannot copy from %1$s(%2$s) to %3$s due to %4$s", file.getPath(), dVar.f2381a.url, file2.getPath(), e10));
                M(dVar.f2381a, dVar.f2382b, new AssetDownloadListener.DownloadError(-1, e10, 2));
                Log.d(f28011p, "Copying: error" + dVar.f2381a.url + " copying to " + file2.getPath());
            }
        } catch (IOException e13) {
            fileOutputStream = null;
            e10 = e13;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
            fileInputStream2 = fileInputStream;
            FileUtility.closeQuietly(fileInputStream2);
            FileUtility.closeQuietly(fileOutputStream);
            throw th;
        }
        FileUtility.closeQuietly(fileInputStream);
        FileUtility.closeQuietly(fileOutputStream);
    }

    private String I(DownloadRequest downloadRequest) {
        return ", single request url - " + downloadRequest.url + ", path - " + downloadRequest.path + ", th - " + Thread.currentThread().getName() + "id " + downloadRequest.f28055b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String J(DownloadRequestMediator downloadRequestMediator) {
        return ", mediator url - " + downloadRequestMediator.url + ", path - " + downloadRequestMediator.filePath + ", th - " + Thread.currentThread().getName() + "id " + downloadRequestMediator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public d0 K(c0 c0Var) {
        if (!"gzip".equalsIgnoreCase(c0Var.f("Content-Encoding")) || !e.c(c0Var) || c0Var.b() == null) {
            return c0Var.b();
        }
        return new h(c0Var.f("Content-Type"), -1L, n.c(new l(c0Var.b().source())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L(File file, File file2, boolean z10) {
        if (file == null) {
            return;
        }
        FileUtility.deleteAndLogIfFailed(file);
        if (file2 != null) {
            FileUtility.deleteAndLogIfFailed(file2);
        }
        if (this.f28012a == null || !isCacheEnabled()) {
            return;
        }
        if (z10) {
            this.f28012a.deleteAndRemove(file);
        } else {
            this.f28012a.deleteContents(file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(final DownloadRequest downloadRequest, final AssetDownloadListener assetDownloadListener, final AssetDownloadListener.DownloadError downloadError) {
        Object[] objArr = new Object[2];
        objArr[0] = downloadError;
        objArr[1] = downloadRequest != null ? I(downloadRequest) : "null";
        VungleLogger.error("AssetDownloader#deliverError; loadAd sequence", String.format("Delivering error %1$s; request %2$s", objArr));
        if (assetDownloadListener != null) {
            this.f28020i.execute(new Runnable() { // from class: com.vungle.warren.downloader.AssetDownloader.4
                @Override // java.lang.Runnable
                public void run() {
                    assetDownloadListener.onError(downloadError, downloadRequest);
                }
            });
        }
    }

    private void N(final AssetDownloadListener.Progress progress, final DownloadRequest downloadRequest, final AssetDownloadListener assetDownloadListener) {
        if (assetDownloadListener != null) {
            this.f28020i.execute(new Runnable() { // from class: com.vungle.warren.downloader.AssetDownloader.5
                @Override // java.lang.Runnable
                public void run() {
                    Log.d(AssetDownloader.f28011p, "On progress " + downloadRequest);
                    assetDownloadListener.onProgress(progress, downloadRequest);
                }
            });
        }
    }

    private void O(d<DownloadRequest, AssetDownloadListener> dVar, File file) {
        AssetDownloadListener assetDownloadListener = dVar.f2382b;
        if (assetDownloadListener != null) {
            assetDownloadListener.onSuccess(file, dVar.f2381a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, String> P(File file) {
        return FileUtility.readMap(file.getPath());
    }

    private synchronized DownloadRequestMediator Q(DownloadRequest downloadRequest) {
        ArrayList<DownloadRequestMediator> arrayList = new ArrayList(2);
        arrayList.add(this.f28021j.get(R(downloadRequest)));
        arrayList.add(this.f28021j.get(T(downloadRequest)));
        for (DownloadRequestMediator downloadRequestMediator : arrayList) {
            if (downloadRequestMediator != null) {
                Iterator<DownloadRequest> it = downloadRequestMediator.requests().iterator();
                while (it.hasNext()) {
                    if (it.next().equals(downloadRequest)) {
                        return downloadRequestMediator;
                    }
                }
            }
        }
        return null;
    }

    private String R(DownloadRequest downloadRequest) {
        return downloadRequest.url;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long S(c0 c0Var) {
        if (c0Var == null) {
            return -1L;
        }
        String strC = c0Var.h().c("Content-Length");
        if (TextUtils.isEmpty(strC)) {
            return -1L;
        }
        try {
            return Long.parseLong(strC);
        } catch (Throwable unused) {
            return -1L;
        }
    }

    private String T(DownloadRequest downloadRequest) {
        return downloadRequest.url + " " + downloadRequest.path;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean U(DownloadRequestMediator downloadRequestMediator) {
        for (DownloadRequest downloadRequest : downloadRequestMediator.requests()) {
            if (downloadRequest == null) {
                Log.d(f28011p, "Request is null");
            } else if (V(downloadRequest)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0028  */
    @android.annotation.TargetApi(21)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean V(com.vungle.warren.downloader.DownloadRequest r6) {
        /*
            r5 = this;
            com.vungle.warren.utility.NetworkProvider r0 = r5.f28017f
            int r0 = r0.getCurrentNetworkType()
            r1 = 1
            if (r0 < 0) goto Lf
            int r2 = r6.networkType
            r3 = 3
            if (r2 != r3) goto Lf
            return r1
        Lf:
            if (r0 == 0) goto L28
            if (r0 == r1) goto L26
            r2 = 4
            if (r0 == r2) goto L28
            r2 = 9
            if (r0 == r2) goto L26
            r2 = 17
            if (r0 == r2) goto L28
            r2 = 6
            if (r0 == r2) goto L26
            r2 = 7
            if (r0 == r2) goto L28
            r2 = -1
            goto L29
        L26:
            r2 = 2
            goto L29
        L28:
            r2 = 1
        L29:
            if (r2 <= 0) goto L31
            int r3 = r6.networkType
            r3 = r3 & r2
            if (r3 != r2) goto L31
            goto L32
        L31:
            r1 = 0
        L32:
            java.lang.String r2 = com.vungle.warren.downloader.AssetDownloader.f28011p
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "checking pause for type: "
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = " connected "
            r3.append(r0)
            r3.append(r1)
            java.lang.String r6 = r5.I(r6)
            r3.append(r6)
            java.lang.String r6 = r3.toString()
            android.util.Log.d(r2, r6)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.downloader.AssetDownloader.V(com.vungle.warren.downloader.DownloadRequest):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W(DownloadRequest downloadRequest, AssetDownloadListener assetDownloadListener) throws IOException {
        synchronized (this.f28023l) {
            synchronized (this) {
                if (downloadRequest.b()) {
                    this.f28022k.remove(downloadRequest);
                    Log.d(f28011p, "Request " + downloadRequest.url + " is cancelled before starting");
                    new AssetDownloadListener.Progress().status = 3;
                    M(downloadRequest, assetDownloadListener, new AssetDownloadListener.DownloadError(-1, new IOException(AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_CANCELLED), 1));
                    return;
                }
                DownloadRequestMediator downloadRequestMediator = this.f28021j.get(b0(downloadRequest));
                if (downloadRequestMediator == null) {
                    this.f28022k.remove(downloadRequest);
                    DownloadRequestMediator downloadRequestMediatorZ = Z(downloadRequest, assetDownloadListener);
                    this.f28021j.put(downloadRequestMediatorZ.key, downloadRequestMediatorZ);
                    X(downloadRequestMediatorZ);
                    return;
                }
                try {
                    downloadRequestMediator.lock();
                    synchronized (this) {
                        this.f28022k.remove(downloadRequest);
                        if (downloadRequestMediator.is(6) || (downloadRequestMediator.is(3) && !downloadRequest.b())) {
                            DownloadRequestMediator downloadRequestMediatorZ2 = Z(downloadRequest, assetDownloadListener);
                            this.f28021j.put(downloadRequestMediator.key, downloadRequestMediatorZ2);
                            X(downloadRequestMediatorZ2);
                        } else if (downloadRequestMediator.isCacheable) {
                            downloadRequestMediator.add(downloadRequest, assetDownloadListener);
                            if (downloadRequestMediator.is(2)) {
                                X(downloadRequestMediator);
                            }
                        } else {
                            VungleLogger.warn("AssetDownloader#launchRequest; loadAd sequence", "request " + downloadRequest + " is already running");
                            M(downloadRequest, assetDownloadListener, new AssetDownloadListener.DownloadError(-1, new IllegalArgumentException("DownloadRequest is already running"), 1));
                        }
                    }
                } finally {
                    downloadRequestMediator.unlock();
                }
            }
        }
    }

    private synchronized void X(final DownloadRequestMediator downloadRequestMediator) {
        E();
        downloadRequestMediator.set(1);
        this.f28018g.execute(new DownloadPriorityRunnable(downloadRequestMediator) { // from class: com.vungle.warren.downloader.AssetDownloader.2
            /* JADX WARN: Code restructure failed: missing block: B:195:0x05b0, code lost:
            
                r2.flush();
             */
            /* JADX WARN: Code restructure failed: missing block: B:196:0x05ba, code lost:
            
                if (r3.is(1) == false) goto L199;
             */
            /* JADX WARN: Code restructure failed: missing block: B:197:0x05bc, code lost:
            
                r3 = java.lang.System.currentTimeMillis();
                r0.put("DOWNLOAD_COMPLETE", java.lang.Boolean.TRUE.toString());
                r0.put("Last-Cache-Verification", java.lang.String.valueOf(r3));
                r0.put("Last-Download", java.lang.String.valueOf(r3));
                r30.f28031t.o0(r11, r0);
                r3.set(4);
             */
            /* JADX WARN: Code restructure failed: missing block: B:200:0x05ea, code lost:
            
                r13.status = 6;
                r30.f28031t.h0(r3, r13);
                android.util.Log.d(com.vungle.warren.downloader.AssetDownloader.f28011p, "State has changed, cancelling download " + r30.f28031t.J(r3));
             */
            /* JADX WARN: Code restructure failed: missing block: B:202:0x0617, code lost:
            
                if (r6.b() == null) goto L204;
             */
            /* JADX WARN: Code restructure failed: missing block: B:203:0x0619, code lost:
            
                r6.b().close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:204:0x0620, code lost:
            
                r25.cancel();
                android.util.Log.d(com.vungle.warren.downloader.AssetDownloader.f28011p, "request is done " + r30.f28031t.J(r3));
                r0 = r3.getStatus();
             */
            /* JADX WARN: Code restructure failed: missing block: B:205:0x064a, code lost:
            
                if (r0 == 2) goto L217;
             */
            /* JADX WARN: Code restructure failed: missing block: B:207:0x064d, code lost:
            
                if (r0 == 3) goto L216;
             */
            /* JADX WARN: Code restructure failed: missing block: B:209:0x0650, code lost:
            
                if (r0 == 4) goto L215;
             */
            /* JADX WARN: Code restructure failed: missing block: B:211:0x0653, code lost:
            
                if (r0 == 5) goto L214;
             */
            /* JADX WARN: Code restructure failed: missing block: B:212:0x0655, code lost:
            
                if (r21 != false) goto L217;
             */
            /* JADX WARN: Code restructure failed: missing block: B:213:0x0657, code lost:
            
                r30.f28031t.l0(r3);
             */
            /* JADX WARN: Code restructure failed: missing block: B:214:0x065f, code lost:
            
                r7 = r22;
                r30.f28031t.f0(r7, r3);
             */
            /* JADX WARN: Code restructure failed: missing block: B:215:0x0669, code lost:
            
                r7 = r22;
                r30.f28031t.i0(r12, r3);
             */
            /* JADX WARN: Code restructure failed: missing block: B:216:0x0673, code lost:
            
                r7 = r22;
                r30.f28031t.e0(r3);
             */
            /* JADX WARN: Code restructure failed: missing block: B:217:0x067d, code lost:
            
                r7 = r22;
             */
            /* JADX WARN: Code restructure failed: missing block: B:218:0x067f, code lost:
            
                android.util.Log.d(com.vungle.warren.downloader.AssetDownloader.f28011p, "Done with request in state " + r3.getStatus() + " " + r30.f28031t.J(r3));
                r8 = r30.f28031t;
             */
            /* JADX WARN: Code restructure failed: missing block: B:219:0x06af, code lost:
            
                monitor-enter(r8);
             */
            /* JADX WARN: Code restructure failed: missing block: B:220:0x06b0, code lost:
            
                r30.f28031t.m0();
             */
            /* JADX WARN: Code restructure failed: missing block: B:221:0x06b5, code lost:
            
                monitor-exit(r8);
             */
            /* JADX WARN: Code restructure failed: missing block: B:222:0x06b6, code lost:
            
                com.vungle.warren.utility.FileUtility.closeQuietly(r2);
                com.vungle.warren.utility.FileUtility.closeQuietly(r14);
             */
            /* JADX WARN: Code restructure failed: missing block: B:223:0x06c2, code lost:
            
                if (r30.f28031t.f28012a == null) goto L230;
             */
            /* JADX WARN: Code restructure failed: missing block: B:225:0x06c8, code lost:
            
                if (r3.isCacheable == false) goto L230;
             */
            /* JADX WARN: Code restructure failed: missing block: B:226:0x06ca, code lost:
            
                r30.f28031t.f28012a.stopTracking(r12);
             */
            /* JADX WARN: Code restructure failed: missing block: B:227:0x06d9, code lost:
            
                if (r30.f28031t.isCacheEnabled() != false) goto L229;
             */
            /* JADX WARN: Code restructure failed: missing block: B:228:0x06db, code lost:
            
                r30.f28031t.f28012a.clear();
             */
            /* JADX WARN: Code restructure failed: missing block: B:229:0x06e5, code lost:
            
                r30.f28031t.f28012a.purge();
             */
            /* JADX WARN: Code restructure failed: missing block: B:230:0x06ee, code lost:
            
                r14 = r7;
                r15 = r21;
                r0 = true;
             */
            /* JADX WARN: Code restructure failed: missing block: B:234:0x06f8, code lost:
            
                r0 = th;
             */
            /* JADX WARN: Code restructure failed: missing block: B:240:0x0700, code lost:
            
                r7 = r22;
                r3 = 2;
                r4 = 3;
                r17 = r2;
                r2 = r6;
                r10 = r24;
             */
            /* JADX WARN: Code restructure failed: missing block: B:406:0x0b41, code lost:
            
                android.util.Log.d(com.vungle.warren.downloader.AssetDownloader.f28011p, "Reconnected, starting download again");
             */
            /* JADX WARN: Code restructure failed: missing block: B:407:0x0b4a, code lost:
            
                r3.setConnected(true);
                r3.set(1);
             */
            /* JADX WARN: Code restructure failed: missing block: B:408:0x0b55, code lost:
            
                r0 = r3;
                r16 = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:409:0x0b5a, code lost:
            
                r0 = th;
             */
            /* JADX WARN: Code restructure failed: missing block: B:410:0x0b5b, code lost:
            
                r7 = r5;
                r15 = r21;
                r13 = false;
             */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:346:0x09e0 A[Catch: all -> 0x0d05, TRY_ENTER, TRY_LEAVE, TryCatch #26 {all -> 0x0d05, blocks: (B:343:0x09c6, B:346:0x09e0, B:349:0x09ea, B:352:0x09f6, B:354:0x0a05, B:356:0x0a0d, B:391:0x0aec, B:452:0x0bdd, B:456:0x0bec), top: B:598:0x09c6 }] */
            /* JADX WARN: Removed duplicated region for block: B:349:0x09ea A[Catch: all -> 0x0d05, TRY_ENTER, TryCatch #26 {all -> 0x0d05, blocks: (B:343:0x09c6, B:346:0x09e0, B:349:0x09ea, B:352:0x09f6, B:354:0x0a05, B:356:0x0a0d, B:391:0x0aec, B:452:0x0bdd, B:456:0x0bec), top: B:598:0x09c6 }] */
            /* JADX WARN: Removed duplicated region for block: B:416:0x0b71  */
            /* JADX WARN: Removed duplicated region for block: B:420:0x0b77  */
            /* JADX WARN: Removed duplicated region for block: B:436:0x0bc1  */
            /* JADX WARN: Removed duplicated region for block: B:449:0x0bd8  */
            /* JADX WARN: Removed duplicated region for block: B:459:0x0bfc  */
            /* JADX WARN: Removed duplicated region for block: B:463:0x0c0b  */
            /* JADX WARN: Removed duplicated region for block: B:466:0x0c30  */
            /* JADX WARN: Removed duplicated region for block: B:479:0x0c91  */
            /* JADX WARN: Removed duplicated region for block: B:506:0x0d0e  */
            /* JADX WARN: Removed duplicated region for block: B:510:0x0d1d  */
            /* JADX WARN: Removed duplicated region for block: B:513:0x0d42  */
            /* JADX WARN: Removed duplicated region for block: B:526:0x0da3  */
            /* JADX WARN: Removed duplicated region for block: B:53:0x0190 A[Catch: all -> 0x014a, TRY_ENTER, TRY_LEAVE, TryCatch #33 {all -> 0x014a, blocks: (B:12:0x0067, B:47:0x0177, B:49:0x0181, B:53:0x0190, B:58:0x01d8), top: B:612:0x0177 }] */
            /* JADX WARN: Removed duplicated region for block: B:55:0x0197  */
            /* JADX WARN: Removed duplicated region for block: B:592:0x0cb4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:600:0x0dc6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:642:0x01d8 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:87:0x02ab  */
            /* JADX WARN: Type inference failed for: r14v15 */
            /* JADX WARN: Type inference failed for: r14v26 */
            /* JADX WARN: Type inference failed for: r14v27 */
            /* JADX WARN: Type inference failed for: r14v28 */
            /* JADX WARN: Type inference failed for: r14v6, types: [java.io.Closeable] */
            /* JADX WARN: Type inference failed for: r17v10 */
            /* JADX WARN: Type inference failed for: r17v18 */
            /* JADX WARN: Type inference failed for: r17v19 */
            /* JADX WARN: Type inference failed for: r17v2, types: [java.io.Closeable] */
            /* JADX WARN: Type inference failed for: r17v20 */
            /* JADX WARN: Type inference failed for: r25v14 */
            /* JADX WARN: Type inference failed for: r25v2, types: [ja.e] */
            /* JADX WARN: Type inference failed for: r25v43 */
            /* JADX WARN: Type inference failed for: r25v44 */
            /* JADX WARN: Type inference failed for: r25v45 */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void run() throws java.lang.Throwable {
                /*
                    Method dump skipped, instruction units count: 3595
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.downloader.AssetDownloader.AnonymousClass2.run():void");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, String> Y(File file, s sVar, String str) throws Throwable {
        HashMap<String, String> map = new HashMap<>();
        map.put("Download_URL", str);
        map.put("ETag", sVar.c("ETag"));
        map.put("Last-Modified", sVar.c("Last-Modified"));
        map.put("Accept-Ranges", sVar.c("Accept-Ranges"));
        map.put("Content-Encoding", sVar.c("Content-Encoding"));
        o0(file, map);
        return map;
    }

    private DownloadRequestMediator Z(DownloadRequest downloadRequest, AssetDownloadListener assetDownloadListener) throws IOException {
        File file;
        File metaFile;
        String str;
        boolean z10;
        if (isCacheEnabled()) {
            file = this.f28012a.getFile(downloadRequest.url);
            metaFile = this.f28012a.getMetaFile(file);
            str = downloadRequest.url;
            z10 = true;
        } else {
            file = new File(downloadRequest.path);
            metaFile = new File(file.getPath() + ".vng_meta");
            str = downloadRequest.url + " " + downloadRequest.path;
            z10 = false;
        }
        Log.d(f28011p, "Destination file " + file.getPath());
        return new DownloadRequestMediator(downloadRequest, assetDownloadListener, file.getPath(), metaFile.getPath(), z10, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a0(Throwable th, boolean z10) {
        if (th instanceof RuntimeException) {
            return 4;
        }
        if (!z10 || (th instanceof SocketException) || (th instanceof SocketTimeoutException)) {
            return 0;
        }
        return ((th instanceof UnknownHostException) || (th instanceof SSLException)) ? 1 : 2;
    }

    private String b0(DownloadRequest downloadRequest) {
        return isCacheEnabled() ? R(downloadRequest) : T(downloadRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c0(File file, c0 c0Var, DownloadRequestMediator downloadRequestMediator, HashMap<String, String> map) {
        if (c0Var != null && file.exists() && file.length() > 0 && downloadRequestMediator.isCacheable) {
            int iD = c0Var.d();
            if (Boolean.parseBoolean(map.get("DOWNLOAD_COMPLETE")) && iD == 304) {
                Log.d(f28011p, "304 code, data size matches file size " + J(downloadRequestMediator));
                return true;
            }
        }
        return false;
    }

    private void d0(DownloadRequest downloadRequest) {
        if (downloadRequest.b()) {
            return;
        }
        downloadRequest.a();
        DownloadRequestMediator downloadRequestMediatorQ = Q(downloadRequest);
        if (downloadRequestMediatorQ != null && downloadRequestMediatorQ.getStatus() != 3) {
            d<DownloadRequest, AssetDownloadListener> dVarRemove = downloadRequestMediatorQ.remove(downloadRequest);
            DownloadRequest downloadRequest2 = dVarRemove == null ? null : dVarRemove.f2381a;
            AssetDownloadListener assetDownloadListener = dVarRemove != null ? dVarRemove.f2382b : null;
            if (downloadRequestMediatorQ.values().isEmpty()) {
                downloadRequestMediatorQ.set(3);
            }
            if (downloadRequest2 == null) {
                return;
            }
            AssetDownloadListener.Progress progress = new AssetDownloadListener.Progress();
            progress.status = 3;
            N(progress, downloadRequest2, assetDownloadListener);
        }
        m0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e0(DownloadRequestMediator downloadRequestMediator) {
        Iterator<DownloadRequest> it = downloadRequestMediator.requests().iterator();
        while (it.hasNext()) {
            d0(it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0(AssetDownloadListener.DownloadError downloadError, DownloadRequestMediator downloadRequestMediator) {
        VungleLogger.error("AssetDownloader#onErrorMediator; loadAd sequence", String.format("Error %1$s occured; mediator %2$s", downloadError, J(downloadRequestMediator)));
        if (downloadError == null) {
            downloadError = new AssetDownloadListener.DownloadError(-1, new RuntimeException(), 4);
        }
        try {
            downloadRequestMediator.lock();
            for (d<DownloadRequest, AssetDownloadListener> dVar : downloadRequestMediator.values()) {
                M(dVar.f2381a, dVar.f2382b, downloadError);
            }
            l0(downloadRequestMediator);
            downloadRequestMediator.set(6);
        } finally {
            downloadRequestMediator.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void g0(int i10) {
        Log.d(f28011p, "Num of connections: " + this.f28021j.values().size());
        for (DownloadRequestMediator downloadRequestMediator : this.f28021j.values()) {
            if (downloadRequestMediator.is(3)) {
                Log.d(f28011p, "Result cancelled");
            } else {
                boolean zU = U(downloadRequestMediator);
                String str = f28011p;
                Log.d(str, "Connected = " + zU + " for " + i10);
                downloadRequestMediator.setConnected(zU);
                if (downloadRequestMediator.isPausable() && zU && downloadRequestMediator.is(2)) {
                    X(downloadRequestMediator);
                    Log.d(str, "resumed " + downloadRequestMediator.key + " " + downloadRequestMediator);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h0(DownloadRequestMediator downloadRequestMediator, AssetDownloadListener.Progress progress) {
        if (downloadRequestMediator == null) {
            return;
        }
        AssetDownloadListener.Progress progressCopy = AssetDownloadListener.Progress.copy(progress);
        Log.d(f28011p, "Progress " + progress.progressPercent + " status " + progress.status + " " + downloadRequestMediator + " " + downloadRequestMediator.filePath);
        for (d<DownloadRequest, AssetDownloadListener> dVar : downloadRequestMediator.values()) {
            N(progressCopy, dVar.f2381a, dVar.f2382b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0(File file, DownloadRequestMediator downloadRequestMediator) {
        Log.d(f28011p, "OnComplete - Removing connections and listener " + downloadRequestMediator);
        try {
            downloadRequestMediator.lock();
            List<d<DownloadRequest, AssetDownloadListener>> listValues = downloadRequestMediator.values();
            if (!file.exists()) {
                VungleLogger.error("AssetDownloader#onSuccessMediator; loadAd sequence", String.format("File %1$s does not exist; mediator %2$s ", file.getPath(), J(downloadRequestMediator)));
                f0(new AssetDownloadListener.DownloadError(-1, new IOException("File is deleted"), 2), downloadRequestMediator);
                return;
            }
            DownloaderCache downloaderCache = this.f28012a;
            if (downloaderCache != null && downloadRequestMediator.isCacheable) {
                downloaderCache.onCacheHit(file, listValues.size());
                this.f28012a.setCacheLastUpdateTimestamp(file, System.currentTimeMillis());
            }
            for (d<DownloadRequest, AssetDownloadListener> dVar : listValues) {
                File file2 = new File(dVar.f2381a.path);
                if (file2.equals(file)) {
                    file2 = file;
                } else {
                    H(file, file2, dVar);
                }
                Log.d(f28011p, "Deliver success:" + dVar.f2381a.url + " dest file: " + file2.getPath());
                O(dVar, file2);
            }
            l0(downloadRequestMediator);
            downloadRequestMediator.set(6);
            Log.d(f28011p, "Finished " + J(downloadRequestMediator));
        } finally {
            downloadRequestMediator.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j0(long j10, int i10, c0 c0Var, DownloadRequestMediator downloadRequestMediator) {
        return (i10 == 206 && !n0(c0Var, j10, downloadRequestMediator)) || i10 == 416;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k0(DownloadRequestMediator downloadRequestMediator, AssetDownloadListener.Progress progress, AssetDownloadListener.DownloadError downloadError) {
        if (downloadRequestMediator.is(3) || U(downloadRequestMediator)) {
            return false;
        }
        progress.status = 2;
        AssetDownloadListener.Progress progressCopy = AssetDownloadListener.Progress.copy(progress);
        boolean z10 = false;
        for (d<DownloadRequest, AssetDownloadListener> dVar : downloadRequestMediator.values()) {
            DownloadRequest downloadRequest = dVar.f2381a;
            if (downloadRequest != null) {
                if (downloadRequest.pauseOnConnectionLost) {
                    downloadRequestMediator.set(2);
                    Log.d(f28011p, "Pausing download " + I(downloadRequest));
                    N(progressCopy, dVar.f2381a, dVar.f2382b);
                    z10 = true;
                } else {
                    downloadRequestMediator.remove(downloadRequest);
                    M(downloadRequest, dVar.f2382b, downloadError);
                }
            }
        }
        if (!z10) {
            downloadRequestMediator.set(5);
        }
        String str = f28011p;
        StringBuilder sb = new StringBuilder();
        sb.append("Attempted to pause - ");
        sb.append(downloadRequestMediator.getStatus() == 2);
        Log.d(str, sb.toString());
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void l0(DownloadRequestMediator downloadRequestMediator) {
        this.f28021j.remove(downloadRequestMediator.key);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        if (this.f28021j.isEmpty()) {
            Log.d(f28011p, "Removing listener");
            this.f28017f.removeListener(this.f28026o);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean n0(ja.c0 r5, long r6, com.vungle.warren.downloader.DownloadRequestMediator r8) {
        /*
            r4 = this;
            com.vungle.warren.downloader.RangeResponse r0 = new com.vungle.warren.downloader.RangeResponse
            ja.s r1 = r5.h()
            java.lang.String r2 = "Content-Range"
            java.lang.String r1 = r1.c(r2)
            r0.<init>(r1)
            int r5 = r5.d()
            r1 = 206(0xce, float:2.89E-43)
            if (r5 != r1) goto L2f
            java.lang.String r5 = r0.dimension
            java.lang.String r1 = "bytes"
            boolean r5 = r1.equalsIgnoreCase(r5)
            if (r5 == 0) goto L2f
            long r0 = r0.rangeStart
            r2 = 0
            int r5 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r5 < 0) goto L2f
            int r5 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r5 != 0) goto L2f
            r5 = 1
            goto L30
        L2f:
            r5 = 0
        L30:
            java.lang.String r6 = com.vungle.warren.downloader.AssetDownloader.f28011p
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "satisfies partial download: "
            r7.append(r0)
            r7.append(r5)
            java.lang.String r0 = " "
            r7.append(r0)
            java.lang.String r8 = r4.J(r8)
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            android.util.Log.d(r6, r7)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.downloader.AssetDownloader.n0(ja.c0, long, com.vungle.warren.downloader.DownloadRequestMediator):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0(File file, HashMap<String, String> map) throws Throwable {
        FileUtility.writeMap(file.getPath(), map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0(long j10) {
        try {
            Thread.sleep(Math.max(0L, j10));
        } catch (InterruptedException e10) {
            Log.e(f28011p, "InterruptedException ", e10);
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean q0(DownloadRequestMediator downloadRequestMediator, File file, Map<String, String> map, int i10) {
        return this.f28012a != null && downloadRequestMediator.isCacheable && i10 != 200 && i10 != 416 && i10 != 206 && Boolean.parseBoolean(map.get("DOWNLOAD_COMPLETE")) && file.exists() && file.length() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r0(DownloadRequestMediator downloadRequestMediator, File file, Map<String, String> map) {
        String str;
        if (map == null || this.f28012a == null || !downloadRequestMediator.isCacheable || (str = map.get("Last-Cache-Verification")) == null || !file.exists() || !Boolean.parseBoolean(map.get("DOWNLOAD_COMPLETE"))) {
            return false;
        }
        try {
            long j10 = Long.parseLong(str);
            long j11 = this.f28013b;
            return j11 >= Long.MAX_VALUE - j10 || j10 + j11 >= System.currentTimeMillis();
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    @Override // com.vungle.warren.downloader.Downloader
    public synchronized void cancel(DownloadRequest downloadRequest) {
        if (downloadRequest == null) {
            return;
        }
        d0(downloadRequest);
    }

    @Override // com.vungle.warren.downloader.Downloader
    public synchronized void cancelAll() {
        Log.d(f28011p, "Cancelling all");
        for (DownloadRequest downloadRequest : this.f28022k) {
            Log.d(f28011p, "Cancel in transtiotion " + downloadRequest.url);
            cancel(downloadRequest);
        }
        Log.d(f28011p, "Cancel in mediator " + this.f28021j.values().size());
        for (DownloadRequestMediator downloadRequestMediator : this.f28021j.values()) {
            Log.d(f28011p, "Cancel in mediator " + downloadRequestMediator.key);
            e0(downloadRequestMediator);
        }
    }

    @Override // com.vungle.warren.downloader.Downloader
    public boolean cancelAndAwait(DownloadRequest downloadRequest, long j10) {
        if (downloadRequest == null) {
            return false;
        }
        cancel(downloadRequest);
        long jCurrentTimeMillis = System.currentTimeMillis() + Math.max(0L, j10);
        while (System.currentTimeMillis() < jCurrentTimeMillis) {
            DownloadRequestMediator downloadRequestMediatorQ = Q(downloadRequest);
            synchronized (this) {
                if (!this.f28022k.contains(downloadRequest) && (downloadRequestMediatorQ == null || !downloadRequestMediatorQ.requests().contains(downloadRequest))) {
                    return true;
                }
            }
            p0(10L);
        }
        return false;
    }

    @Override // com.vungle.warren.downloader.Downloader
    public synchronized void clearCache() {
        DownloaderCache downloaderCache = this.f28012a;
        if (downloaderCache != null) {
            downloaderCache.clear();
        }
    }

    @Override // com.vungle.warren.downloader.Downloader
    public synchronized void download(final DownloadRequest downloadRequest, final AssetDownloadListener assetDownloadListener) {
        if (downloadRequest == null) {
            VungleLogger.error("AssetDownloader#download; loadAd sequence", "downloadRequest is null");
            if (assetDownloadListener != null) {
                M(null, assetDownloadListener, new AssetDownloadListener.DownloadError(-1, new IllegalArgumentException("DownloadRequest is null"), 1));
            }
        } else {
            VungleLogger.verbose(true, f28011p, AdLoader.TT_DOWNLOAD_CONTEXT, String.format("Waiting for download asset %1$s, at: %2$d", downloadRequest, Long.valueOf(System.currentTimeMillis())));
            this.f28022k.add(downloadRequest);
            this.f28018g.execute(new DownloadPriorityRunnable(new AssetPriority(DownloadRequest.Priority.CRITICAL, 0)) { // from class: com.vungle.warren.downloader.AssetDownloader.1
                @Override // java.lang.Runnable
                public void run() {
                    VungleLogger.verbose(true, AssetDownloader.f28011p, AdLoader.TT_DOWNLOAD_CONTEXT, String.format("Start to download asset %1$s, at: %2$d", downloadRequest, Long.valueOf(System.currentTimeMillis())));
                    try {
                        AssetDownloader.this.W(downloadRequest, assetDownloadListener);
                    } catch (IOException e10) {
                        VungleLogger.error("AssetDownloader#download; loadAd sequence", "cannot launch request due to " + e10);
                        Log.e(AssetDownloader.f28011p, "Error on launching request", e10);
                        AssetDownloader.this.M(downloadRequest, assetDownloadListener, new AssetDownloadListener.DownloadError(-1, e10, 1));
                    }
                }
            });
        }
    }

    @Override // com.vungle.warren.downloader.Downloader
    public boolean dropCache(String str) {
        DownloaderCache downloaderCache = this.f28012a;
        if (downloaderCache != null && str != null) {
            try {
                File file = downloaderCache.getFile(str);
                Log.d(f28011p, "Broken asset, deleting " + file.getPath());
                return this.f28012a.deleteAndRemove(file);
            } catch (IOException e10) {
                VungleLogger.error("AssetDownloader#dropCache; loadAd sequence", String.format("Error %1$s occured", e10));
                Log.e(f28011p, "There was an error to get file", e10);
            }
        }
        return false;
    }

    @Override // com.vungle.warren.downloader.Downloader
    public synchronized List<DownloadRequest> getAllRequests() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = new ArrayList(this.f28021j.values()).iterator();
        while (it.hasNext()) {
            arrayList.addAll(((DownloadRequestMediator) it.next()).requests());
        }
        arrayList.addAll(this.f28022k);
        return arrayList;
    }

    @Override // com.vungle.warren.downloader.Downloader
    public synchronized void init() {
        DownloaderCache downloaderCache = this.f28012a;
        if (downloaderCache != null) {
            downloaderCache.init();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000b  */
    @Override // com.vungle.warren.downloader.Downloader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean isCacheEnabled() {
        /*
            r1 = this;
            monitor-enter(r1)
            com.vungle.warren.downloader.DownloaderCache r0 = r1.f28012a     // Catch: java.lang.Throwable -> Le
            if (r0 == 0) goto Lb
            boolean r0 = r1.f28025n     // Catch: java.lang.Throwable -> Le
            if (r0 == 0) goto Lb
            r0 = 1
            goto Lc
        Lb:
            r0 = 0
        Lc:
            monitor-exit(r1)
            return r0
        Le:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.downloader.AssetDownloader.isCacheEnabled():boolean");
    }

    @Override // com.vungle.warren.downloader.Downloader
    public synchronized void setCacheEnabled(boolean z10) {
        this.f28025n = z10;
    }

    @Override // com.vungle.warren.downloader.Downloader
    public void setProgressStep(int i10) {
        if (i10 != 0) {
            this.f28024m = i10;
        }
    }

    @Override // com.vungle.warren.downloader.Downloader
    public void updatePriority(DownloadRequest downloadRequest) {
        Runnable runnable;
        DownloadRequestMediator downloadRequestMediatorQ = Q(downloadRequest);
        if (downloadRequestMediatorQ == null || (runnable = downloadRequestMediatorQ.getRunnable()) == null || !this.f28018g.remove(runnable)) {
            return;
        }
        Log.d(f28011p, "prio: updated to " + downloadRequestMediatorQ.getPriority());
        this.f28018g.execute(runnable);
    }

    public AssetDownloader(DownloaderCache downloaderCache, long j10, int i10, NetworkProvider networkProvider, ExecutorService executorService) {
        this.f28014c = 5;
        this.f28015d = 10;
        this.f28016e = 300;
        this.f28021j = new ConcurrentHashMap();
        this.f28022k = new ArrayList();
        this.f28023l = new Object();
        this.f28024m = 5;
        this.f28025n = true;
        this.f28026o = new NetworkProvider.NetworkListener() { // from class: com.vungle.warren.downloader.AssetDownloader.3
            @Override // com.vungle.warren.utility.NetworkProvider.NetworkListener
            public void onChanged(int i11) {
                Log.d(AssetDownloader.f28011p, "Network changed: " + i11);
                AssetDownloader.this.g0(i11);
            }
        };
        this.f28012a = downloaderCache;
        int iMax = Math.max(i10, 1);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(iMax, iMax, 1L, timeUnit, new PriorityBlockingQueue());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f28013b = j10;
        this.f28018g = threadPoolExecutor;
        this.f28017f = networkProvider;
        this.f28020i = executorService;
        this.f28019h = new x.b().j(30L, timeUnit).g(30L, timeUnit).e(null).h(true).i(true).d();
    }

    public static abstract class DownloadPriorityRunnable implements Comparable, Runnable {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private static final AtomicInteger f28041r = new AtomicInteger();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f28042o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final DownloadRequestMediator f28043p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final AssetPriority f28044q;

        DownloadPriorityRunnable(DownloadRequestMediator downloadRequestMediator) {
            this.f28042o = f28041r.incrementAndGet();
            this.f28043p = downloadRequestMediator;
            this.f28044q = downloadRequestMediator.priority;
            downloadRequestMediator.setRunnable(this);
        }

        AssetPriority c() {
            DownloadRequestMediator downloadRequestMediator = this.f28043p;
            return downloadRequestMediator != null ? downloadRequestMediator.getPriority() : this.f28044q;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            if (!(obj instanceof DownloadPriorityRunnable)) {
                return -1;
            }
            DownloadPriorityRunnable downloadPriorityRunnable = (DownloadPriorityRunnable) obj;
            int iCompareTo = c().compareTo(downloadPriorityRunnable.c());
            return iCompareTo == 0 ? Integer.valueOf(this.f28042o).compareTo(Integer.valueOf(downloadPriorityRunnable.f28042o)) : iCompareTo;
        }

        DownloadPriorityRunnable(AssetPriority assetPriority) {
            this.f28042o = f28041r.incrementAndGet();
            this.f28044q = assetPriority;
            this.f28043p = null;
        }
    }
}
