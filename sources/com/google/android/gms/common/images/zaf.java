package com.google.android.gms.common.images;

import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.Objects;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zaf extends zag {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference<ImageManager.OnImageLoadedListener> f7343b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zaf)) {
            return false;
        }
        zaf zafVar = (zaf) obj;
        ImageManager.OnImageLoadedListener onImageLoadedListener = this.f7343b.get();
        ImageManager.OnImageLoadedListener onImageLoadedListener2 = zafVar.f7343b.get();
        return onImageLoadedListener2 != null && onImageLoadedListener != null && Objects.b(onImageLoadedListener2, onImageLoadedListener) && Objects.b(zafVar.f7344a, this.f7344a);
    }

    public final int hashCode() {
        return Objects.c(this.f7344a);
    }
}
