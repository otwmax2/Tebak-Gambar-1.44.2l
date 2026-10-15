package k5;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: DependencyCycleException.java */
/* JADX INFO: loaded from: classes2.dex */
public class s extends t {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List<c<?>> f31581o;

    public s(List<c<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.f31581o = list;
    }
}
