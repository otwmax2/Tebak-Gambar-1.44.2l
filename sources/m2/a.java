package m2;

import b2.l;
import com.vungle.mediation.BuildConfig;
import java.io.File;
import z1.e;

/* JADX INFO: compiled from: FileDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements e<File, File> {
    @Override // z1.e
    public String a() {
        return BuildConfig.FLAVOR;
    }

    @Override // z1.e
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public l<File> b(File file, int i10, int i11) {
        return new b(file);
    }
}
