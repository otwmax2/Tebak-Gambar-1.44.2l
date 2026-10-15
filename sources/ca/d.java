package ca;

import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: DurationUnitJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public enum d {
    NANOSECONDS(TimeUnit.NANOSECONDS),
    MICROSECONDS(TimeUnit.MICROSECONDS),
    MILLISECONDS(TimeUnit.MILLISECONDS),
    SECONDS(TimeUnit.SECONDS),
    MINUTES(TimeUnit.MINUTES),
    HOURS(TimeUnit.HOURS),
    DAYS(TimeUnit.DAYS);


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final TimeUnit f5017o;

    d(TimeUnit timeUnit) {
        this.f5017o = timeUnit;
    }

    public final TimeUnit e() {
        return this.f5017o;
    }
}
