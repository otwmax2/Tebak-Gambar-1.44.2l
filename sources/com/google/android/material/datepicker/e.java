package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Build;
import android.text.format.DateUtils;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: compiled from: DateStrings.java */
/* JADX INFO: loaded from: classes2.dex */
class e {
    static String a(long j10) {
        return b(j10, Locale.getDefault());
    }

    static String b(long j10, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? s.b(locale).format(new Date(j10)) : s.f(locale).format(new Date(j10));
    }

    static String c(Context context, long j10) {
        return DateUtils.formatDateTime(context, j10 - ((long) TimeZone.getDefault().getOffset(j10)), 36);
    }

    static String d(long j10) {
        return e(j10, Locale.getDefault());
    }

    static String e(long j10, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? s.m(locale).format(new Date(j10)) : s.f(locale).format(new Date(j10));
    }
}
