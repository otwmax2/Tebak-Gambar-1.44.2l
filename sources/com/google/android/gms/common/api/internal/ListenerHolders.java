package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class ListenerHolders {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<ListenerHolder<?>> f7037a = Collections.newSetFromMap(new WeakHashMap());

    public final void a() {
        Iterator<ListenerHolder<?>> it = this.f7037a.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.f7037a.clear();
    }
}
