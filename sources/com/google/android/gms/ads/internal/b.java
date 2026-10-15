package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzezx;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class b extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzs f5718a;

    b(zzs zzsVar) {
        this.f5718a = zzsVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        zzs zzsVar = this.f5718a;
        if (zzsVar.f6240u != null) {
            try {
                zzsVar.f6240u.A(zzezx.d(1, null, null));
            } catch (RemoteException e10) {
                zzbza.i("#007 Could not call remote method.", e10);
            }
        }
        zzs zzsVar2 = this.f5718a;
        if (zzsVar2.f6240u != null) {
            try {
                zzsVar2.f6240u.F(0);
            } catch (RemoteException e11) {
                zzbza.i("#007 Could not call remote method.", e11);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.startsWith(this.f5718a.r())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            zzs zzsVar = this.f5718a;
            if (zzsVar.f6240u != null) {
                try {
                    zzsVar.f6240u.A(zzezx.d(3, null, null));
                } catch (RemoteException e10) {
                    zzbza.i("#007 Could not call remote method.", e10);
                }
            }
            zzs zzsVar2 = this.f5718a;
            if (zzsVar2.f6240u != null) {
                try {
                    zzsVar2.f6240u.F(3);
                } catch (RemoteException e11) {
                    zzbza.i("#007 Could not call remote method.", e11);
                }
            }
            this.f5718a.Ta(0);
            return true;
        }
        if (str.startsWith("gmsg://scriptLoadFailed")) {
            zzs zzsVar3 = this.f5718a;
            if (zzsVar3.f6240u != null) {
                try {
                    zzsVar3.f6240u.A(zzezx.d(1, null, null));
                } catch (RemoteException e12) {
                    zzbza.i("#007 Could not call remote method.", e12);
                }
            }
            zzs zzsVar4 = this.f5718a;
            if (zzsVar4.f6240u != null) {
                try {
                    zzsVar4.f6240u.F(0);
                } catch (RemoteException e13) {
                    zzbza.i("#007 Could not call remote method.", e13);
                }
            }
            this.f5718a.Ta(0);
            return true;
        }
        if (str.startsWith("gmsg://adResized")) {
            zzs zzsVar5 = this.f5718a;
            if (zzsVar5.f6240u != null) {
                try {
                    zzsVar5.f6240u.g();
                } catch (RemoteException e14) {
                    zzbza.i("#007 Could not call remote method.", e14);
                }
            }
            this.f5718a.Ta(this.f5718a.u(str));
            return true;
        }
        if (str.startsWith("gmsg://")) {
            return true;
        }
        zzs zzsVar6 = this.f5718a;
        if (zzsVar6.f6240u != null) {
            try {
                zzsVar6.f6240u.a();
                this.f5718a.f6240u.f();
            } catch (RemoteException e15) {
                zzbza.i("#007 Could not call remote method.", e15);
            }
        }
        zzs.cb(this.f5718a, zzs.Za(this.f5718a, str));
        return true;
    }
}
