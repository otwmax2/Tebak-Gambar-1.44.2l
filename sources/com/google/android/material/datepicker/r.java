package com.google.android.material.datepicker;

import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: compiled from: TimeSource.java */
/* JADX INFO: loaded from: classes2.dex */
class r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final r f25410c = new r(null, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Long f25411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TimeZone f25412b;

    private r(Long l10, TimeZone timeZone) {
        this.f25411a = l10;
        this.f25412b = timeZone;
    }

    static r c() {
        return f25410c;
    }

    Calendar a() {
        return b(this.f25412b);
    }

    Calendar b(TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l10 = this.f25411a;
        if (l10 != null) {
            calendar.setTimeInMillis(l10.longValue());
        }
        return calendar;
    }
}
