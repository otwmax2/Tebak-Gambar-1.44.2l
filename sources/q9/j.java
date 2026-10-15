package q9;

import java.io.File;
import t9.m;

/* JADX INFO: compiled from: FileTreeWalk.kt */
/* JADX INFO: loaded from: classes2.dex */
class j extends i {
    public static final e a(File file, f fVar) {
        m.e(file, "<this>");
        m.e(fVar, "direction");
        return new e(file, fVar);
    }

    public static final e b(File file) {
        m.e(file, "<this>");
        return a(file, f.BOTTOM_UP);
    }
}
