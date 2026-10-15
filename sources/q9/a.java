package q9;

import com.facebook.share.internal.ShareInternalUtility;
import java.io.File;
import t9.m;

/* JADX INFO: compiled from: Exceptions.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class a extends d {
    public /* synthetic */ a(File file, File file2, String str, int i10, t9.g gVar) {
        this(file, (i10 & 2) != 0 ? null : file2, (i10 & 4) != 0 ? null : str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(File file, File file2, String str) {
        super(file, file2, str);
        m.e(file, ShareInternalUtility.STAGING_PARAM);
    }
}
