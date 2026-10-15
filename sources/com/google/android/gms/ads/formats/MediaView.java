package com.google.android.gms.ads.formats;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.MediaContent;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class MediaView extends FrameLayout {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private MediaContent f5658o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ImageView.ScaleType f5659p;

    public MediaView(Context context) {
        super(context);
    }

    public void setImageScaleType(ImageView.ScaleType scaleType) {
        this.f5659p = scaleType;
    }

    public void setMediaContent(MediaContent mediaContent) {
        this.f5658o = mediaContent;
    }
}
