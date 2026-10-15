package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.impl.R;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbqc extends zzbqf {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f11144c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f11145d;

    public zzbqc(zzcei zzceiVar, Map map) {
        super(zzceiVar, "storePicture");
        this.f11144c = map;
        this.f11145d = zzceiVar.g();
    }

    public final void i() {
        if (this.f11145d == null) {
            c("Activity context is not available");
            return;
        }
        com.google.android.gms.ads.internal.zzt.r();
        if (!new zzbab(this.f11145d).c()) {
            c("Feature is not supported by the device.");
            return;
        }
        String str = (String) this.f11144c.get("iurl");
        if (TextUtils.isEmpty(str)) {
            c("Image url cannot be empty.");
            return;
        }
        if (!URLUtil.isValidUrl(str)) {
            c("Invalid image url: ".concat(String.valueOf(str)));
            return;
        }
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        com.google.android.gms.ads.internal.zzt.r();
        if (TextUtils.isEmpty(lastPathSegment) || !lastPathSegment.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)")) {
            c("Image type not recognized: ".concat(String.valueOf(lastPathSegment)));
            return;
        }
        Resources resourcesD = com.google.android.gms.ads.internal.zzt.q().d();
        com.google.android.gms.ads.internal.zzt.r();
        AlertDialog.Builder builderG = com.google.android.gms.ads.internal.util.zzs.g(this.f11145d);
        builderG.setTitle(resourcesD != null ? resourcesD.getString(R.string.f5706k) : "Save image");
        builderG.setMessage(resourcesD != null ? resourcesD.getString(R.string.f5707l) : "Allow Ad to store image in Picture gallery?");
        builderG.setPositiveButton(resourcesD != null ? resourcesD.getString(R.string.f5708m) : "Accept", new zzbqa(this, str, lastPathSegment));
        builderG.setNegativeButton(resourcesD != null ? resourcesD.getString(R.string.f5709n) : "Decline", new zzbqb(this));
        builderG.create().show();
    }
}
