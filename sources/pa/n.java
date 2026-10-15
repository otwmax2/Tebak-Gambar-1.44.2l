package pa;

import java.io.IOException;

/* JADX INFO: compiled from: StreamResetException.java */
/* JADX INFO: loaded from: classes2.dex */
public final class n extends IOException {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final b f33716o;

    public n(b bVar) {
        super("stream was reset: " + bVar);
        this.f33716o = bVar;
    }
}
