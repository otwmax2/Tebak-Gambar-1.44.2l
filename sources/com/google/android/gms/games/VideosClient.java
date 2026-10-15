package com.google.android.gms.games;

import com.google.android.gms.games.video.Videos;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public interface VideosClient {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface CaptureOverlayState {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    public interface OnCaptureOverlayStateListener extends Videos.CaptureOverlayStateListener {
        void J0(int i10);
    }
}
