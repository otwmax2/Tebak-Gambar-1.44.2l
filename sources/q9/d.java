package q9;

import com.facebook.share.internal.ShareInternalUtility;
import java.io.File;
import java.io.IOException;
import t9.m;

/* JADX INFO: compiled from: Exceptions.kt */
/* JADX INFO: loaded from: classes2.dex */
public class d extends IOException {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final File f34078o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final File f34079p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f34080q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(File file, File file2, String str) {
        super(c.b(file, file2, str));
        m.e(file, ShareInternalUtility.STAGING_PARAM);
        this.f34078o = file;
        this.f34079p = file2;
        this.f34080q = str;
    }
}
