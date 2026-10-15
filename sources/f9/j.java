package f9;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: ModelUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public final class j {
    public static <T> List<T> a(List<T> list) {
        return list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
    }
}
