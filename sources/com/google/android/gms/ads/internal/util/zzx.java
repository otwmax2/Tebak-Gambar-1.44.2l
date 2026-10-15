package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Rect;
import android.media.AudioManager;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.google.android.gms.internal.ads.zzbar;
import com.vungle.mediation.BuildConfig;
import java.util.Locale;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@TargetApi(28)
public class zzx extends zzv {
    static final /* synthetic */ WindowInsets n(Activity activity, View view, WindowInsets windowInsets) {
        if (com.google.android.gms.ads.internal.zzt.q().h().l() == null) {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            String strConcat = BuildConfig.FLAVOR;
            if (displayCutout != null) {
                zzg zzgVarH = com.google.android.gms.ads.internal.zzt.q().h();
                for (Rect rect : displayCutout.getBoundingRects()) {
                    String str = String.format(Locale.US, "%d,%d,%d,%d", Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom));
                    if (!TextUtils.isEmpty(strConcat)) {
                        strConcat = strConcat.concat("|");
                    }
                    strConcat = strConcat.concat(String.valueOf(str));
                }
                zzgVarH.C0(strConcat);
            } else {
                com.google.android.gms.ads.internal.zzt.q().h().C0(BuildConfig.FLAVOR);
            }
        }
        o(false, activity);
        return view.onApplyWindowInsets(windowInsets);
    }

    private static final void o(boolean z10, Activity activity) {
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i10 = attributes.layoutInDisplayCutoutMode;
        int i11 = true != z10 ? 2 : 1;
        if (i11 != i10) {
            attributes.layoutInDisplayCutoutMode = i11;
            window.setAttributes(attributes);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final int i(AudioManager audioManager) {
        return audioManager.getStreamMinVolume(3);
    }

    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final void j(final Activity activity) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Z0)).booleanValue() && com.google.android.gms.ads.internal.zzt.q().h().l() == null && !activity.isInMultiWindowMode()) {
            o(true, activity);
            activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.google.android.gms.ads.internal.util.zzw
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return zzx.n(activity, view, windowInsets);
                }
            });
        }
    }
}
