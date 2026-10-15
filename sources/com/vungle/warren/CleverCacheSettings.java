package com.vungle.warren;

import b7.c;
import com.google.gson.g;
import com.google.gson.l;
import com.google.gson.o;
import com.google.gson.u;
import com.vungle.warren.downloader.CleverCache;
import com.vungle.warren.model.JsonUtil;

/* JADX INFO: loaded from: classes2.dex */
public class CleverCacheSettings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @c("enabled")
    private final boolean f27777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @c("clear_shared_cache_timestamp")
    private final long f27778b;

    private CleverCacheSettings(boolean z10, long j10) {
        this.f27777a = z10;
        this.f27778b = j10;
    }

    static CleverCacheSettings a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return fromJson((o) new g().b().k(str, o.class));
        } catch (u unused) {
            return null;
        }
    }

    public static CleverCacheSettings fromJson(o oVar) {
        if (!JsonUtil.hasNonNull(oVar, CleverCache.CC_DIR)) {
            return null;
        }
        long jN = -1;
        boolean z10 = true;
        o oVarC = oVar.C(CleverCache.CC_DIR);
        try {
            if (oVarC.E("clear_shared_cache_timestamp")) {
                jN = oVarC.A("clear_shared_cache_timestamp").n();
            }
        } catch (NumberFormatException unused) {
        }
        if (oVarC.E("enabled")) {
            l lVarA = oVarC.A("enabled");
            if (lVarA.s() && "false".equalsIgnoreCase(lVarA.o())) {
                z10 = false;
            }
        }
        return new CleverCacheSettings(z10, jN);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CleverCacheSettings cleverCacheSettings = (CleverCacheSettings) obj;
        return this.f27777a == cleverCacheSettings.f27777a && this.f27778b == cleverCacheSettings.f27778b;
    }

    public long getTimestamp() {
        return this.f27778b;
    }

    public int hashCode() {
        int i10 = (this.f27777a ? 1 : 0) * 31;
        long j10 = this.f27778b;
        return i10 + ((int) (j10 ^ (j10 >>> 32)));
    }

    public boolean isEnabled() {
        return this.f27777a;
    }

    public String serializeToString() {
        o oVar = new o();
        oVar.t(CleverCache.CC_DIR, new g().b().z(this));
        return oVar.toString();
    }
}
