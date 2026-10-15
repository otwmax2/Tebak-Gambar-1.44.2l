package com.facebook.login;

import com.facebook.internal.NativeProtocol;
import java.util.Arrays;

/* JADX INFO: compiled from: DefaultAudience.kt */
/* JADX INFO: loaded from: classes.dex */
public enum DefaultAudience {
    NONE(null),
    ONLY_ME(NativeProtocol.AUDIENCE_ME),
    FRIENDS(NativeProtocol.AUDIENCE_FRIENDS),
    EVERYONE(NativeProtocol.AUDIENCE_EVERYONE);

    private final String nativeProtocolAudience;

    DefaultAudience(String str) {
        this.nativeProtocolAudience = str;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static DefaultAudience[] valuesCustom() {
        DefaultAudience[] defaultAudienceArrValuesCustom = values();
        return (DefaultAudience[]) Arrays.copyOf(defaultAudienceArrValuesCustom, defaultAudienceArrValuesCustom.length);
    }

    public final String getNativeProtocolAudience() {
        return this.nativeProtocolAudience;
    }
}
