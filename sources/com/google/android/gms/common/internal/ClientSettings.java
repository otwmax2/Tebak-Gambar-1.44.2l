package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.signin.SignInOptions;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
@KeepForSdk
public final class ClientSettings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final Account f7362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<Scope> f7363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<Scope> f7364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Api<?>, zab> f7365d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f7366e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private final View f7367f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f7368g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f7369h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final SignInOptions f7370i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Integer f7371j;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepForSdk
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        private Account f7372a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private o.b<Scope> f7373b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f7374c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f7375d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private SignInOptions f7376e = SignInOptions.f24896x;

        @KeepForSdk
        public ClientSettings a() {
            return new ClientSettings(this.f7372a, this.f7373b, null, 0, null, this.f7374c, this.f7375d, this.f7376e, false);
        }

        @KeepForSdk
        public Builder b(String str) {
            this.f7374c = str;
            return this;
        }

        public final Builder c(Collection<Scope> collection) {
            if (this.f7373b == null) {
                this.f7373b = new o.b<>();
            }
            this.f7373b.addAll(collection);
            return this;
        }

        public final Builder d(@Nullable Account account) {
            this.f7372a = account;
            return this;
        }

        public final Builder e(String str) {
            this.f7375d = str;
            return this;
        }
    }

    public ClientSettings(@Nullable Account account, Set<Scope> set, Map<Api<?>, zab> map, int i10, @Nullable View view, String str, String str2, @Nullable SignInOptions signInOptions, boolean z10) {
        this.f7362a = account;
        Set<Scope> setEmptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f7363b = setEmptySet;
        map = map == null ? Collections.emptyMap() : map;
        this.f7365d = map;
        this.f7367f = view;
        this.f7366e = i10;
        this.f7368g = str;
        this.f7369h = str2;
        this.f7370i = signInOptions == null ? SignInOptions.f24896x : signInOptions;
        HashSet hashSet = new HashSet(setEmptySet);
        Iterator<zab> it = map.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().f7475a);
        }
        this.f7364c = Collections.unmodifiableSet(hashSet);
    }

    @KeepForSdk
    public Account a() {
        return this.f7362a;
    }

    @KeepForSdk
    @Deprecated
    public String b() {
        Account account = this.f7362a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    @KeepForSdk
    public Account c() {
        Account account = this.f7362a;
        return account != null ? account : new Account("<<default account>>", "com.google");
    }

    @KeepForSdk
    public Set<Scope> d() {
        return this.f7364c;
    }

    @KeepForSdk
    public Set<Scope> e(Api<?> api) {
        zab zabVar = this.f7365d.get(api);
        if (zabVar == null || zabVar.f7475a.isEmpty()) {
            return this.f7363b;
        }
        HashSet hashSet = new HashSet(this.f7363b);
        hashSet.addAll(zabVar.f7475a);
        return hashSet;
    }

    @KeepForSdk
    public int f() {
        return this.f7366e;
    }

    @KeepForSdk
    public String g() {
        return this.f7368g;
    }

    @KeepForSdk
    public Set<Scope> h() {
        return this.f7363b;
    }

    @KeepForSdk
    public View i() {
        return this.f7367f;
    }

    public final SignInOptions j() {
        return this.f7370i;
    }

    public final Integer k() {
        return this.f7371j;
    }

    public final String l() {
        return this.f7369h;
    }

    public final Map<Api<?>, zab> m() {
        return this.f7365d;
    }

    public final void n(Integer num) {
        this.f7371j = num;
    }
}
