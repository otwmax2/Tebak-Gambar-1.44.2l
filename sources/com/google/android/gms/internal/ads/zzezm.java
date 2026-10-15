package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzezm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Pattern f17772a;

    @VisibleForTesting
    public zzezm() {
        Pattern patternCompile;
        try {
            patternCompile = Pattern.compile((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10396v6));
        } catch (PatternSyntaxException unused) {
            patternCompile = null;
        }
        this.f17772a = patternCompile;
    }

    public final String a(String str) {
        Pattern pattern = this.f17772a;
        if (pattern != null && str != null) {
            Matcher matcher = pattern.matcher(str);
            if (matcher.find()) {
                return matcher.group();
            }
        }
        return null;
    }
}
