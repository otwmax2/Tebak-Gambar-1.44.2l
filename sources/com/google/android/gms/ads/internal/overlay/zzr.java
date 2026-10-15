package com.google.android.gms.ads.internal.overlay;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbyt;
import com.google.android.gms.internal.ads.zzbza;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzr extends FrameLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ImageButton f6020o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzad f6021p;

    public zzr(Context context, zzq zzqVar, zzad zzadVar) {
        super(context);
        this.f6021p = zzadVar;
        setOnClickListener(this);
        ImageButton imageButton = new ImageButton(context);
        this.f6020o = imageButton;
        d();
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(this);
        zzay.b();
        int iD = zzbyt.D(context, zzqVar.f6016a);
        zzay.b();
        int iD2 = zzbyt.D(context, 0);
        zzay.b();
        int iD3 = zzbyt.D(context, zzqVar.f6017b);
        zzay.b();
        imageButton.setPadding(iD, iD2, iD3, zzbyt.D(context, zzqVar.f6018c));
        imageButton.setContentDescription("Interstitial close button");
        zzay.b();
        int iD4 = zzbyt.D(context, zzqVar.f6019d + zzqVar.f6016a + zzqVar.f6017b);
        zzay.b();
        addView(imageButton, new FrameLayout.LayoutParams(iD4, zzbyt.D(context, zzqVar.f6019d + zzqVar.f6018c), 17));
        long jLongValue = ((Long) zzba.c().b(zzbar.W0)).longValue();
        if (jLongValue <= 0) {
            return;
        }
        d dVar = ((Boolean) zzba.c().b(zzbar.X0)).booleanValue() ? new d(this) : null;
        imageButton.setAlpha(0.0f);
        imageButton.animate().alpha(1.0f).setDuration(jLongValue).setListener(dVar);
    }

    private final void d() {
        String str = (String) zzba.c().b(zzbar.V0);
        if (!PlatformVersion.g() || TextUtils.isEmpty(str) || "default".equals(str)) {
            this.f6020o.setImageResource(R.drawable.btn_dialog);
            return;
        }
        Resources resourcesD = com.google.android.gms.ads.internal.zzt.q().d();
        if (resourcesD == null) {
            this.f6020o.setImageResource(R.drawable.btn_dialog);
            return;
        }
        Drawable drawable = null;
        try {
            if ("white".equals(str)) {
                drawable = resourcesD.getDrawable(com.google.android.gms.ads.impl.R.drawable.f5695b);
            } else if ("black".equals(str)) {
                drawable = resourcesD.getDrawable(com.google.android.gms.ads.impl.R.drawable.f5694a);
            }
        } catch (Resources.NotFoundException unused) {
            zzbza.b("Close button resource not found, falling back to default.");
        }
        if (drawable == null) {
            this.f6020o.setImageResource(R.drawable.btn_dialog);
        } else {
            this.f6020o.setImageDrawable(drawable);
            this.f6020o.setScaleType(ImageView.ScaleType.CENTER);
        }
    }

    public final void b(boolean z10) {
        if (!z10) {
            this.f6020o.setVisibility(0);
            return;
        }
        this.f6020o.setVisibility(8);
        if (((Long) zzba.c().b(zzbar.W0)).longValue() > 0) {
            this.f6020o.animate().cancel();
            this.f6020o.clearAnimation();
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzad zzadVar = this.f6021p;
        if (zzadVar != null) {
            zzadVar.g();
        }
    }
}
