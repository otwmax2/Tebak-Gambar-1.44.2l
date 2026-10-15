package com.google.android.gms.internal.common;

import java.util.Iterator;
import org.jspecify.nullness.NullMarked;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@NullMarked
public final class zzx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzo f21705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f21706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzu f21707c;

    /* JADX INFO: Access modifiers changed from: private */
    public final Iterator d(CharSequence charSequence) {
        return new zzt(this.f21707c, this, charSequence);
    }
}
