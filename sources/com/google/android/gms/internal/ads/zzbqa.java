package com.google.android.gms.internal.ads;

import android.app.DownloadManager;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import com.vungle.warren.ui.JavascriptBridge;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbqa implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f11140o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f11141p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzbqc f11142q;

    zzbqa(zzbqc zzbqcVar, String str, String str2) {
        this.f11142q = zzbqcVar;
        this.f11140o = str;
        this.f11141p = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        DownloadManager downloadManager = (DownloadManager) this.f11142q.f11145d.getSystemService(JavascriptBridge.MraidHandler.DOWNLOAD_ACTION);
        try {
            String str = this.f11140o;
            String str2 = this.f11141p;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            com.google.android.gms.ads.internal.zzt.r();
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
            downloadManager.enqueue(request);
        } catch (IllegalStateException unused) {
            this.f11142q.c("Could not store picture.");
        }
    }
}
