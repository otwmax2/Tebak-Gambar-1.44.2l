package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.google.android.gms.common.util.PlatformVersion;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdmu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f15200a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PopupWindow f15201b;

    public final void a(Context context, View view) {
        PopupWindow popupWindow;
        if (!PlatformVersion.e() || PlatformVersion.g()) {
            return;
        }
        Window window = context instanceof Activity ? ((Activity) context).getWindow() : null;
        if (window == null || window.getDecorView() == null || ((Activity) context).isDestroyed()) {
            popupWindow = null;
        } else {
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            frameLayout.addView(view, -1, -1);
            popupWindow = new PopupWindow((View) frameLayout, 1, 1, false);
            popupWindow.setOutsideTouchable(true);
            popupWindow.setClippingEnabled(false);
            zzbza.b("Displaying the 1x1 popup off the screen.");
            try {
                popupWindow.showAtLocation(window.getDecorView(), 0, -1, -1);
            } catch (Exception unused) {
                popupWindow = null;
            }
        }
        this.f15201b = popupWindow;
        if (popupWindow == null) {
            context = null;
        }
        this.f15200a = context;
    }

    public final void b() {
        Context context = this.f15200a;
        if (context == null || this.f15201b == null) {
            return;
        }
        if ((!(context instanceof Activity) || !((Activity) context).isDestroyed()) && this.f15201b.isShowing()) {
            this.f15201b.dismiss();
        }
        this.f15200a = null;
        this.f15201b = null;
    }
}
