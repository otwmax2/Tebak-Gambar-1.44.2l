package com.facebook.gamingservices.internal;

import android.os.Build;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import t9.m;

/* JADX INFO: compiled from: DateFormatter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DateFormatter {
    public static final DateFormatter INSTANCE = new DateFormatter();

    private DateFormatter() {
    }

    public final ZonedDateTime format$facebook_gamingservices_release(String str) {
        m.e(str, "isoDate");
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        DateTimeFormatter dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ssZ");
        m.d(dateTimeFormatterOfPattern, "ofPattern(\"yyyy-MM-dd'T'HH:mm:ssZ\")");
        return ZonedDateTime.parse(str, dateTimeFormatterOfPattern);
    }
}
