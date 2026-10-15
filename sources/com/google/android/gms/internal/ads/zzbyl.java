package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import java.math.BigInteger;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbyl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private BigInteger f11564a = BigInteger.ONE;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private String f11565b = AppEventsConstants.EVENT_PARAM_VALUE_NO;

    public final synchronized String a() {
        String string;
        string = this.f11564a.toString();
        this.f11564a = this.f11564a.add(BigInteger.ONE);
        this.f11565b = string;
        return string;
    }

    public final synchronized String b() {
        return this.f11565b;
    }
}
