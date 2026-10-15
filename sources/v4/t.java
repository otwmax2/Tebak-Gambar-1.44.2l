package v4;

import com.vungle.mediation.BuildConfig;
import java.io.File;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class t {
    public static String a(File file) {
        if (!file.getName().endsWith(".apk")) {
            throw new IllegalArgumentException("Non-apk found in splits directory.");
        }
        String strReplaceFirst = file.getName().replaceFirst("(_\\d+)?\\.apk", BuildConfig.FLAVOR);
        return (strReplaceFirst.equals("base-master") || strReplaceFirst.equals("base-main")) ? BuildConfig.FLAVOR : strReplaceFirst.startsWith("base-") ? strReplaceFirst.replace("base-", "config.") : strReplaceFirst.replace("-", ".config.").replace(".config.master", BuildConfig.FLAVOR).replace(".config.main", BuildConfig.FLAVOR);
    }
}
