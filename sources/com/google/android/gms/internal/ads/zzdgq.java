package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzdgq {
    boolean B();

    boolean R();

    void a(View view, MotionEvent motionEvent, View view2);

    void b(View view, Map map, Map map2, ImageView.ScaleType scaleType);

    void c(View view, Map map);

    boolean d(Bundle bundle);

    void e();

    void f();

    void g();

    void h(View view);

    void i(View view, Map map, Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener);

    void j(View view, View view2, Map map, Map map2, boolean z10, ImageView.ScaleType scaleType);

    void k(Bundle bundle);

    void l(Bundle bundle);

    JSONObject m(View view, Map map, Map map2, ImageView.ScaleType scaleType);

    void m0(String str);

    void n();

    void o(com.google.android.gms.ads.internal.client.zzcs zzcsVar);

    void p();

    void q(View view, View view2, Map map, Map map2, boolean z10, ImageView.ScaleType scaleType, int i10);

    void r(com.google.android.gms.ads.internal.client.zzcw zzcwVar);

    JSONObject s(View view, Map map, Map map2, ImageView.ScaleType scaleType);

    void t();

    void u(zzbfr zzbfrVar);

    int zza();
}
