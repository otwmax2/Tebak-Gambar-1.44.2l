package androidx.room;

import androidx.lifecycle.LiveData;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;

/* JADX INFO: compiled from: InvalidationLiveDataContainer.java */
/* JADX INFO: loaded from: classes.dex */
class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Set<LiveData> f4147a = Collections.newSetFromMap(new IdentityHashMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h0 f4148b;

    m(h0 h0Var) {
        this.f4148b = h0Var;
    }
}
