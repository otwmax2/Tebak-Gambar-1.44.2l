package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbpz extends zzbqf {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    static final Set f11119u = CollectionUtils.g("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f11120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f11121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f11122e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f11123f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f11124g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f11125h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f11126i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f11127j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Object f11128k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzcei f11129l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Activity f11130m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private zzcfx f11131n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ImageView f11132o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private LinearLayout f11133p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzbqg f11134q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private PopupWindow f11135r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private RelativeLayout f11136s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ViewGroup f11137t;

    public zzbpz(zzcei zzceiVar, zzbqg zzbqgVar) {
        super(zzceiVar, "resize");
        this.f11120c = "top-right";
        this.f11121d = true;
        this.f11122e = 0;
        this.f11123f = 0;
        this.f11124g = -1;
        this.f11125h = 0;
        this.f11126i = 0;
        this.f11127j = -1;
        this.f11128k = new Object();
        this.f11129l = zzceiVar;
        this.f11130m = zzceiVar.g();
        this.f11134q = zzbqgVar;
    }

    public final void h(boolean z10) {
        synchronized (this.f11128k) {
            PopupWindow popupWindow = this.f11135r;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.f11136s.removeView((View) this.f11129l);
                ViewGroup viewGroup = this.f11137t;
                if (viewGroup != null) {
                    viewGroup.removeView(this.f11132o);
                    this.f11137t.addView((View) this.f11129l);
                    this.f11129l.C0(this.f11131n);
                }
                if (z10) {
                    g("default");
                    zzbqg zzbqgVar = this.f11134q;
                    if (zzbqgVar != null) {
                        zzbqgVar.zzb();
                    }
                }
                this.f11135r = null;
                this.f11136s = null;
                this.f11137t = null;
                this.f11133p = null;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0257 A[Catch: all -> 0x047d, TryCatch #1 {, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:9:0x0012, B:11:0x001a, B:12:0x001f, B:14:0x0021, B:16:0x002d, B:17:0x0032, B:19:0x0034, B:21:0x003c, B:23:0x004a, B:24:0x005b, B:26:0x0069, B:27:0x007a, B:29:0x0088, B:30:0x0099, B:32:0x00a7, B:33:0x00b8, B:35:0x00c6, B:36:0x00d4, B:38:0x00e2, B:39:0x00e4, B:41:0x00e8, B:43:0x00ec, B:45:0x00f4, B:48:0x00fc, B:52:0x0122, B:58:0x012e, B:126:0x0257, B:127:0x025c, B:129:0x025e, B:131:0x027e, B:133:0x0282, B:135:0x028f, B:137:0x02cb, B:169:0x0384, B:176:0x03b3, B:177:0x03cb, B:178:0x03ec, B:180:0x03f4, B:181:0x03fb, B:182:0x0422, B:185:0x0425, B:187:0x044a, B:188:0x045f, B:170:0x038b, B:171:0x0392, B:172:0x0399, B:173:0x03a0, B:174:0x03a6, B:175:0x03ad, B:136:0x02c8, B:190:0x0461, B:191:0x0466, B:59:0x0135, B:61:0x0139, B:89:0x018c, B:97:0x01dc, B:99:0x01e7, B:101:0x01ea, B:103:0x01ed, B:105:0x01f1, B:108:0x01f7, B:90:0x0197, B:92:0x01ad, B:94:0x01b8, B:91:0x01a2, B:93:0x01b0, B:95:0x01bd, B:96:0x01d1, B:98:0x01df, B:109:0x0208, B:115:0x0232, B:121:0x0242, B:118:0x0238, B:120:0x0240, B:112:0x022a, B:114:0x0230, B:122:0x0249, B:123:0x024f, B:193:0x0468, B:194:0x046d, B:196:0x046f, B:197:0x0474, B:199:0x0476, B:200:0x047b), top: B:209:0x0007, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x025e A[Catch: all -> 0x047d, TryCatch #1 {, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:9:0x0012, B:11:0x001a, B:12:0x001f, B:14:0x0021, B:16:0x002d, B:17:0x0032, B:19:0x0034, B:21:0x003c, B:23:0x004a, B:24:0x005b, B:26:0x0069, B:27:0x007a, B:29:0x0088, B:30:0x0099, B:32:0x00a7, B:33:0x00b8, B:35:0x00c6, B:36:0x00d4, B:38:0x00e2, B:39:0x00e4, B:41:0x00e8, B:43:0x00ec, B:45:0x00f4, B:48:0x00fc, B:52:0x0122, B:58:0x012e, B:126:0x0257, B:127:0x025c, B:129:0x025e, B:131:0x027e, B:133:0x0282, B:135:0x028f, B:137:0x02cb, B:169:0x0384, B:176:0x03b3, B:177:0x03cb, B:178:0x03ec, B:180:0x03f4, B:181:0x03fb, B:182:0x0422, B:185:0x0425, B:187:0x044a, B:188:0x045f, B:170:0x038b, B:171:0x0392, B:172:0x0399, B:173:0x03a0, B:174:0x03a6, B:175:0x03ad, B:136:0x02c8, B:190:0x0461, B:191:0x0466, B:59:0x0135, B:61:0x0139, B:89:0x018c, B:97:0x01dc, B:99:0x01e7, B:101:0x01ea, B:103:0x01ed, B:105:0x01f1, B:108:0x01f7, B:90:0x0197, B:92:0x01ad, B:94:0x01b8, B:91:0x01a2, B:93:0x01b0, B:95:0x01bd, B:96:0x01d1, B:98:0x01df, B:109:0x0208, B:115:0x0232, B:121:0x0242, B:118:0x0238, B:120:0x0240, B:112:0x022a, B:114:0x0230, B:122:0x0249, B:123:0x024f, B:193:0x0468, B:194:0x046d, B:196:0x046f, B:197:0x0474, B:199:0x0476, B:200:0x047b), top: B:209:0x0007, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x017f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void i(java.util.Map r18) {
        /*
            Method dump skipped, instruction units count: 1206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbpz.i(java.util.Map):void");
    }

    public final void j(int i10, int i11, boolean z10) {
        synchronized (this.f11128k) {
            this.f11122e = i10;
            this.f11123f = i11;
        }
    }

    public final void k(int i10, int i11) {
        this.f11122e = i10;
        this.f11123f = i11;
    }

    public final boolean l() {
        boolean z10;
        synchronized (this.f11128k) {
            z10 = this.f11135r != null;
        }
        return z10;
    }
}
