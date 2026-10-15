package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzaue extends Thread {
    private final String A;
    private final boolean B;
    private final boolean C;
    private final boolean D;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f9961o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f9962p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Object f9963q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzatv f9964r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f9965s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f9966t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f9967u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final int f9968v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final int f9969w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int f9970x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final int f9971y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final int f9972z;

    public zzaue() {
        zzatv zzatvVar = new zzatv();
        this.f9961o = false;
        this.f9962p = false;
        this.f9964r = zzatvVar;
        this.f9963q = new Object();
        this.f9966t = ((Long) zzbcc.f10509d.e()).intValue();
        this.f9967u = ((Long) zzbcc.f10506a.e()).intValue();
        this.f9968v = ((Long) zzbcc.f10510e.e()).intValue();
        this.f9969w = ((Long) zzbcc.f10508c.e()).intValue();
        this.f9970x = ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Q)).intValue();
        this.f9971y = ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.R)).intValue();
        this.f9972z = ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S)).intValue();
        this.f9965s = ((Long) zzbcc.f10511f.e()).intValue();
        this.A = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.U);
        this.B = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.V)).booleanValue();
        this.C = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.W)).booleanValue();
        this.D = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.X)).booleanValue();
        setName("ContentFetchTask");
    }

    public final zzatu a() {
        return this.f9964r.a(this.D);
    }

    @VisibleForTesting
    final zzaud b(View view, zzatu zzatuVar) {
        if (view == null) {
            return new zzaud(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new zzaud(this, 0, 0);
            }
            zzatuVar.k(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new zzaud(this, 1, 0);
        }
        if ((view instanceof WebView) && !(view instanceof zzcei)) {
            WebView webView = (WebView) view;
            if (!PlatformVersion.e()) {
                return new zzaud(this, 0, 0);
            }
            zzatuVar.h();
            webView.post(new zzauc(this, zzatuVar, webView, globalVisibleRect));
            return new zzaud(this, 0, 1);
        }
        if (!(view instanceof ViewGroup)) {
            return new zzaud(this, 0, 0);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < viewGroup.getChildCount(); i12++) {
            zzaud zzaudVarB = b(viewGroup.getChildAt(i12), zzatuVar);
            i10 += zzaudVarB.f9959a;
            i11 += zzaudVarB.f9960b;
        }
        return new zzaud(this, i10, i11);
    }

    @VisibleForTesting
    final void c(View view) {
        try {
            zzatu zzatuVar = new zzatu(this.f9966t, this.f9967u, this.f9968v, this.f9969w, this.f9970x, this.f9971y, this.f9972z, this.C);
            Context contextB = com.google.android.gms.ads.internal.zzt.d().b();
            if (contextB != null && !TextUtils.isEmpty(this.A)) {
                String str = (String) view.getTag(contextB.getResources().getIdentifier((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.T), "id", contextB.getPackageName()));
                if (str != null && str.equals(this.A)) {
                    return;
                }
            }
            zzaud zzaudVarB = b(view, zzatuVar);
            zzatuVar.m();
            if (zzaudVarB.f9959a == 0 && zzaudVarB.f9960b == 0) {
                return;
            }
            int i10 = zzaudVarB.f9960b;
            if (i10 != 0) {
                if (i10 == 0) {
                }
                this.f9964r.b(zzatuVar);
            } else if (zzatuVar.c() == 0) {
                return;
            }
            if (this.f9964r.d(zzatuVar)) {
                return;
            }
            this.f9964r.b(zzatuVar);
        } catch (Exception e10) {
            zzbza.e("Exception in fetchContentOnUIThread", e10);
            com.google.android.gms.ads.internal.zzt.q().u(e10, "ContentFetchTask.fetchContent");
        }
    }

    @VisibleForTesting
    final void d(zzatu zzatuVar, WebView webView, String str, boolean z10) {
        zzatuVar.g();
        try {
            if (!TextUtils.isEmpty(str)) {
                String strOptString = new JSONObject(str).optString("text");
                if (this.B || TextUtils.isEmpty(webView.getTitle())) {
                    zzatuVar.l(strOptString, z10, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    zzatuVar.l(webView.getTitle() + "\n" + strOptString, z10, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (zzatuVar.o()) {
                this.f9964r.c(zzatuVar);
            }
        } catch (JSONException unused) {
            zzbza.b("Json string may be malformed.");
        } catch (Throwable th) {
            zzbza.c("Failed to get webview content.", th);
            com.google.android.gms.ads.internal.zzt.q().u(th, "ContentFetchTask.processWebViewContent");
        }
    }

    public final void e() {
        synchronized (this.f9963q) {
            if (this.f9961o) {
                zzbza.b("Content hash thread already started, quitting...");
            } else {
                this.f9961o = true;
                start();
            }
        }
    }

    public final void f() {
        synchronized (this.f9963q) {
            this.f9962p = true;
            zzbza.b("ContentFetchThread: paused, pause = true");
        }
    }

    public final void g() {
        synchronized (this.f9963q) {
            this.f9962p = false;
            this.f9963q.notifyAll();
            zzbza.b("ContentFetchThread: wakeup");
        }
    }

    public final boolean h() {
        return this.f9962p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
    
        if (r3.importance != 100) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0048, code lost:
    
        if (r2.inKeyguardRestrictedInputMode() != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004a, code lost:
    
        r0 = (android.os.PowerManager) r0.getSystemService("power");
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0052, code lost:
    
        if (r0 == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0058, code lost:
    
        if (r0.isScreenOn() == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005a, code lost:
    
        r0 = com.google.android.gms.ads.internal.zzt.d().a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0062, code lost:
    
        if (r0 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
    
        com.google.android.gms.internal.ads.zzbza.b("ContentFetchThread: no activity. Sleeping.");
        f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006d, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0072, code lost:
    
        if (r0.getWindow() == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007c, code lost:
    
        if (r0.getWindow().getDecorView() == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007e, code lost:
    
        r1 = r0.getWindow().getDecorView().findViewById(android.R.id.content);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008e, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008f, code lost:
    
        com.google.android.gms.ads.internal.zzt.q().u(r0, "ContentFetchTask.extractContent");
        com.google.android.gms.internal.ads.zzbza.b("Failed getting root view of activity. Content not extracted.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c3, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c4, code lost:
    
        com.google.android.gms.internal.ads.zzbza.e("Error in ContentFetchTask", r0);
        com.google.android.gms.ads.internal.zzt.q().u(r0, "ContentFetchTask.run");
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d3, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d4, code lost:
    
        com.google.android.gms.internal.ads.zzbza.e("Error in ContentFetchTask", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00dc A[EXC_TOP_SPLITTER, LOOP:1: B:67:0x00dc->B:72:0x00dc, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaue.run():void");
    }
}
