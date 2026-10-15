package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdhu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdmq f14773a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdlf f14774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzcnq f14775c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzdgq f14776d;

    public zzdhu(zzdmq zzdmqVar, zzdlf zzdlfVar, zzcnq zzcnqVar, zzdgq zzdgqVar) {
        this.f14773a = zzdmqVar;
        this.f14774b = zzdlfVar;
        this.f14775c = zzcnqVar;
        this.f14776d = zzdgqVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View a() throws zzcet {
        zzcei zzceiVarA = this.f14773a.a(com.google.android.gms.ads.internal.client.zzq.X3(), null, null);
        ((View) zzceiVarA).setVisibility(8);
        zzceiVarA.c0("/sendMessageToSdk", new zzbhp() { // from class: com.google.android.gms.internal.ads.zzdho
            @Override // com.google.android.gms.internal.ads.zzbhp
            public final void a(Object obj, Map map) {
                this.f14766a.b((zzcei) obj, map);
            }
        });
        zzceiVarA.c0("/adMuted", new zzbhp() { // from class: com.google.android.gms.internal.ads.zzdhp
            @Override // com.google.android.gms.internal.ads.zzbhp
            public final void a(Object obj, Map map) {
                this.f14767a.c((zzcei) obj, map);
            }
        });
        this.f14774b.j(new WeakReference(zzceiVarA), "/loadHtml", new zzbhp() { // from class: com.google.android.gms.internal.ads.zzdhq
            @Override // com.google.android.gms.internal.ads.zzbhp
            public final void a(Object obj, final Map map) {
                final zzdhu zzdhuVar = this.f14768a;
                zzcei zzceiVar = (zzcei) obj;
                zzceiVar.J().n0(new zzcft() { // from class: com.google.android.gms.internal.ads.zzdht
                    @Override // com.google.android.gms.internal.ads.zzcft
                    public final void S(boolean z10) {
                        zzdhuVar.d(map, z10);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    zzceiVar.loadData(str, "text/html", "UTF-8");
                } else {
                    zzceiVar.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                }
            }
        });
        this.f14774b.j(new WeakReference(zzceiVarA), "/showOverlay", new zzbhp() { // from class: com.google.android.gms.internal.ads.zzdhr
            @Override // com.google.android.gms.internal.ads.zzbhp
            public final void a(Object obj, Map map) {
                this.f14769a.e((zzcei) obj, map);
            }
        });
        this.f14774b.j(new WeakReference(zzceiVarA), "/hideOverlay", new zzbhp() { // from class: com.google.android.gms.internal.ads.zzdhs
            @Override // com.google.android.gms.internal.ads.zzbhp
            public final void a(Object obj, Map map) {
                this.f14770a.f((zzcei) obj, map);
            }
        });
        return (View) zzceiVarA;
    }

    final /* synthetic */ void b(zzcei zzceiVar, Map map) {
        this.f14774b.g("sendMessageToNativeJs", map);
    }

    final /* synthetic */ void c(zzcei zzceiVar, Map map) {
        this.f14776d.e();
    }

    final /* synthetic */ void d(Map map, boolean z10) {
        HashMap map2 = new HashMap();
        map2.put("messageType", "htmlLoaded");
        map2.put("id", (String) map.get("id"));
        this.f14774b.g("sendMessageToNativeJs", map2);
    }

    final /* synthetic */ void e(zzcei zzceiVar, Map map) {
        zzbza.f("Showing native ads overlay.");
        zzceiVar.L().setVisibility(0);
        this.f14775c.d(true);
    }

    final /* synthetic */ void f(zzcei zzceiVar, Map map) {
        zzbza.f("Hiding native ads overlay.");
        zzceiVar.L().setVisibility(8);
        this.f14775c.d(false);
    }
}
