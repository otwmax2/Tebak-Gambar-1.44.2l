package com.google.android.gms.common.images;

import android.widget.ImageView;
import com.google.android.gms.common.internal.Objects;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zae extends zag {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference<ImageView> f7342b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zae)) {
            return false;
        }
        ImageView imageView = this.f7342b.get();
        ImageView imageView2 = ((zae) obj).f7342b.get();
        return (imageView2 == null || imageView == null || !Objects.b(imageView2, imageView)) ? false : true;
    }

    public final int hashCode() {
        return 0;
    }
}
