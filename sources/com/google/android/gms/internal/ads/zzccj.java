package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzccj implements zzbhp {
    @Override // com.google.android.gms.internal.ads.zzbhp
    public final /* bridge */ /* synthetic */ void a(Object obj, Map map) {
        zzcbj zzcbjVar = (zzcbj) obj;
        zzcfe zzcfeVarR = zzcbjVar.r();
        if (zzcfeVarR == null) {
            try {
                zzcfe zzcfeVar = new zzcfe(zzcbjVar, Float.parseFloat((String) map.get("duration")), AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(map.get("customControlsAllowed")), AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(map.get("clickToExpandAllowed")));
                zzcbjVar.F(zzcfeVar);
                zzcfeVarR = zzcfeVar;
            } catch (NullPointerException e10) {
                e = e10;
                zzbza.e("Unable to parse videoMeta message.", e);
                com.google.android.gms.ads.internal.zzt.q().u(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            } catch (NumberFormatException e11) {
                e = e11;
                zzbza.e("Unable to parse videoMeta message.", e);
                com.google.android.gms.ads.internal.zzt.q().u(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            }
        }
        float f10 = Float.parseFloat((String) map.get("duration"));
        boolean zEquals = AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(map.get("muted"));
        float f11 = Float.parseFloat((String) map.get("currentTime"));
        int i10 = Integer.parseInt((String) map.get("playbackState"));
        int i11 = 0;
        if (i10 >= 0 && i10 <= 3) {
            i11 = i10;
        }
        String str = (String) map.get("aspectRatio");
        float f12 = TextUtils.isEmpty(str) ? 0.0f : Float.parseFloat(str);
        if (zzbza.j(3)) {
            zzbza.b("Video Meta GMSG: currentTime : " + f11 + " , duration : " + f10 + " , isMuted : " + zEquals + " , playbackState : " + i11 + " , aspectRatio : " + str);
        }
        zzcfeVarR.Ta(f11, f10, i11, zEquals, f12);
    }
}
