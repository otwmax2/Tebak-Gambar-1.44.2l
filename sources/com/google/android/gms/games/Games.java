package com.google.android.gms.games;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptionsExtension;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.internal.zzf;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.snapshot.Snapshots;
import com.google.android.gms.games.stats.Stats;
import com.google.android.gms.games.video.Videos;
import com.google.android.gms.internal.games.zzai;
import com.google.android.gms.internal.games.zzaq;
import com.google.android.gms.internal.games.zzba;
import com.google.android.gms.internal.games.zzbu;
import com.google.android.gms.internal.games.zzcm;
import com.google.android.gms.internal.games.zzcw;
import com.google.android.gms.internal.games.zzdq;
import com.google.android.gms.internal.games.zzee;
import com.google.android.gms.internal.games.zzeq;
import com.google.android.gms.internal.games.zzo;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
@KeepForSdk
public final class Games {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Api.ClientKey<zzf> f7948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zzf, GamesOptions> f7949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zzf, GamesOptions> f7950c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Scope f7951d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Scope f7952e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Scope f7953f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Deprecated
    public static final Api<GamesOptions> f7954g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ShowFirstParty
    public static final Scope f7955h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ShowFirstParty
    private static final Api<GamesOptions> f7956i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Deprecated
    public static final GamesMetadata f7957j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Deprecated
    public static final Achievements f7958k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Deprecated
    public static final Events f7959l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Deprecated
    public static final Leaderboards f7960m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Deprecated
    public static final Players f7961n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Deprecated
    public static final Snapshots f7962o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Deprecated
    public static final Stats f7963p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Deprecated
    public static final Videos f7964q;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @KeepForSdk
    @Deprecated
    public interface GetServerAuthCodeResult extends Result {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static abstract class a extends Api.AbstractClientBuilder<zzf, GamesOptions> {
        private a() {
        }

        @Override // com.google.android.gms.common.api.Api.BaseClientBuilder
        public int a() {
            return 1;
        }

        @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
        public /* synthetic */ Api.Client b(Context context, Looper looper, ClientSettings clientSettings, GamesOptions gamesOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            GamesOptions gamesOptionsA = gamesOptions;
            if (gamesOptionsA == null) {
                gamesOptionsA = new GamesOptions.Builder((com.google.android.gms.games.a) null).a();
            }
            return new zzf(context, looper, clientSettings, gamesOptionsA, connectionCallbacks, onConnectionFailedListener);
        }

        /* synthetic */ a(com.google.android.gms.games.a aVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    public static abstract class zzb<T extends Result> extends BaseImplementation.ApiMethodImpl<T, zzf> {
        @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl, com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
        @KeepForSdk
        public /* bridge */ /* synthetic */ void b(Object obj) {
            super.k((Result) obj);
        }
    }

    static {
        Api.ClientKey<zzf> clientKey = new Api.ClientKey<>();
        f7948a = clientKey;
        com.google.android.gms.games.a aVar = new com.google.android.gms.games.a();
        f7949b = aVar;
        b bVar = new b();
        f7950c = bVar;
        f7951d = new Scope("https://www.googleapis.com/auth/games");
        f7952e = new Scope("https://www.googleapis.com/auth/games_lite");
        f7953f = new Scope("https://www.googleapis.com/auth/drive.appdata");
        f7954g = new Api<>("Games.API", aVar, clientKey);
        f7955h = new Scope("https://www.googleapis.com/auth/games.firstparty");
        f7956i = new Api<>("Games.API_1P", bVar, clientKey);
        f7957j = new zzba();
        f7958k = new zzo();
        f7959l = new zzai();
        f7960m = new zzbu();
        f7961n = new zzcw();
        f7962o = new zzdq();
        f7963p = new zzee();
        f7964q = new zzeq();
    }

    private Games() {
    }

    public static AchievementsClient a(Activity activity, GoogleSignInAccount googleSignInAccount) {
        Preconditions.l(googleSignInAccount, "GoogleSignInAccount must not be null");
        return new com.google.android.gms.internal.games.zzf(activity, d(googleSignInAccount));
    }

    public static GamesClient b(Activity activity, GoogleSignInAccount googleSignInAccount) {
        Preconditions.l(googleSignInAccount, "GoogleSignInAccount must not be null");
        return new zzaq(activity, d(googleSignInAccount));
    }

    public static PlayersClient c(Activity activity, GoogleSignInAccount googleSignInAccount) {
        Preconditions.l(googleSignInAccount, "GoogleSignInAccount must not be null");
        return new zzcm(activity, d(googleSignInAccount));
    }

    private static GamesOptions d(GoogleSignInAccount googleSignInAccount) {
        return GamesOptions.a(googleSignInAccount, null).b(1052947).a();
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    public static final class GamesOptions implements GoogleSignInOptionsExtension, Api.ApiOptions.HasGoogleSignInAccountOptions, Api.ApiOptions.Optional {
        public final int A;
        public final int B;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final boolean f7965o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final boolean f7966p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final int f7967q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final boolean f7968r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public final int f7969s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public final String f7970t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final ArrayList<String> f7971u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final boolean f7972v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public final boolean f7973w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final GoogleSignInAccount f7974x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public final String f7975y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private final int f7976z;

        private GamesOptions(boolean z10, boolean z11, int i10, boolean z12, int i11, String str, ArrayList<String> arrayList, boolean z13, boolean z14, GoogleSignInAccount googleSignInAccount, String str2, int i12, int i13, int i14) {
            this.f7965o = z10;
            this.f7966p = z11;
            this.f7967q = i10;
            this.f7968r = z12;
            this.f7969s = i11;
            this.f7970t = str;
            this.f7971u = arrayList;
            this.f7972v = z13;
            this.f7973w = z14;
            this.f7974x = googleSignInAccount;
            this.f7975y = str2;
            this.f7976z = i12;
            this.A = i13;
            this.B = i14;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Builder a(GoogleSignInAccount googleSignInAccount, GamesOptions gamesOptions) {
            Builder builder = new Builder(null, 0 == true ? 1 : 0);
            builder.f7987j = googleSignInAccount;
            return builder;
        }

        @Override // com.google.android.gms.common.api.Api.ApiOptions.HasGoogleSignInAccountOptions
        public final GoogleSignInAccount R1() {
            return this.f7974x;
        }

        public final Bundle c() {
            Bundle bundle = new Bundle();
            bundle.putBoolean("com.google.android.gms.games.key.isHeadless", this.f7965o);
            bundle.putBoolean("com.google.android.gms.games.key.showConnectingPopup", this.f7966p);
            bundle.putInt("com.google.android.gms.games.key.connectingPopupGravity", this.f7967q);
            bundle.putBoolean("com.google.android.gms.games.key.retryingSignIn", this.f7968r);
            bundle.putInt("com.google.android.gms.games.key.sdkVariant", this.f7969s);
            bundle.putString("com.google.android.gms.games.key.forceResolveAccountKey", this.f7970t);
            bundle.putStringArrayList("com.google.android.gms.games.key.proxyApis", this.f7971u);
            bundle.putBoolean("com.google.android.gms.games.key.unauthenticated", this.f7972v);
            bundle.putBoolean("com.google.android.gms.games.key.skipWelcomePopup", this.f7973w);
            bundle.putParcelable("com.google.android.gms.games.key.googleSignInAccount", this.f7974x);
            bundle.putString("com.google.android.gms.games.key.realClientPackageName", this.f7975y);
            bundle.putInt("com.google.android.gms.games.key.API_VERSION", this.A);
            bundle.putInt("com.google.android.gms.games.key.authenticationStrategy", this.B);
            return bundle;
        }

        public final boolean equals(Object obj) {
            String str;
            GoogleSignInAccount googleSignInAccount;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof GamesOptions)) {
                return false;
            }
            GamesOptions gamesOptions = (GamesOptions) obj;
            return this.f7965o == gamesOptions.f7965o && this.f7966p == gamesOptions.f7966p && this.f7967q == gamesOptions.f7967q && this.f7968r == gamesOptions.f7968r && this.f7969s == gamesOptions.f7969s && ((str = this.f7970t) != null ? str.equals(gamesOptions.f7970t) : gamesOptions.f7970t == null) && this.f7971u.equals(gamesOptions.f7971u) && this.f7972v == gamesOptions.f7972v && this.f7973w == gamesOptions.f7973w && ((googleSignInAccount = this.f7974x) != null ? googleSignInAccount.equals(gamesOptions.f7974x) : gamesOptions.f7974x == null) && TextUtils.equals(this.f7975y, gamesOptions.f7975y) && this.f7976z == gamesOptions.f7976z && this.A == gamesOptions.A && this.B == gamesOptions.B;
        }

        public final int hashCode() {
            int i10 = ((((((((((this.f7965o ? 1 : 0) + 527) * 31) + (this.f7966p ? 1 : 0)) * 31) + this.f7967q) * 31) + (this.f7968r ? 1 : 0)) * 31) + this.f7969s) * 31;
            String str = this.f7970t;
            int iHashCode = (((((((i10 + (str == null ? 0 : str.hashCode())) * 31) + this.f7971u.hashCode()) * 31) + (this.f7972v ? 1 : 0)) * 31) + (this.f7973w ? 1 : 0)) * 31;
            GoogleSignInAccount googleSignInAccount = this.f7974x;
            int iHashCode2 = (iHashCode + (googleSignInAccount == null ? 0 : googleSignInAccount.hashCode())) * 31;
            String str2 = this.f7975y;
            return ((((((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f7976z) * 31) + this.A) * 31) + this.B;
        }

        /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
        public static final class Builder {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private static final AtomicInteger f7977o = new AtomicInteger(0);

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private boolean f7978a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f7979b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f7980c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private boolean f7981d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f7982e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private String f7983f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private ArrayList<String> f7984g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            private boolean f7985h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            private boolean f7986i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            GoogleSignInAccount f7987j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            private String f7988k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            private int f7989l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            private int f7990m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            private int f7991n;

            private Builder() {
                this.f7978a = false;
                this.f7979b = true;
                this.f7980c = 17;
                this.f7981d = false;
                this.f7982e = 4368;
                this.f7983f = null;
                this.f7984g = new ArrayList<>();
                this.f7985h = false;
                this.f7986i = false;
                this.f7987j = null;
                this.f7988k = null;
                this.f7989l = 0;
                this.f7990m = 8;
                this.f7991n = 0;
            }

            public final GamesOptions a() {
                return new GamesOptions(this.f7978a, this.f7979b, this.f7980c, this.f7981d, this.f7982e, this.f7983f, this.f7984g, this.f7985h, this.f7986i, this.f7987j, this.f7988k, this.f7989l, this.f7990m, this.f7991n, null);
            }

            public final Builder b(int i10) {
                this.f7982e = i10;
                return this;
            }

            private Builder(GamesOptions gamesOptions) {
                this.f7978a = false;
                this.f7979b = true;
                this.f7980c = 17;
                this.f7981d = false;
                this.f7982e = 4368;
                this.f7983f = null;
                this.f7984g = new ArrayList<>();
                this.f7985h = false;
                this.f7986i = false;
                this.f7987j = null;
                this.f7988k = null;
                this.f7989l = 0;
                this.f7990m = 8;
                this.f7991n = 0;
                if (gamesOptions != null) {
                    this.f7978a = gamesOptions.f7965o;
                    this.f7979b = gamesOptions.f7966p;
                    this.f7980c = gamesOptions.f7967q;
                    this.f7981d = gamesOptions.f7968r;
                    this.f7982e = gamesOptions.f7969s;
                    this.f7983f = gamesOptions.f7970t;
                    this.f7984g = gamesOptions.f7971u;
                    this.f7985h = gamesOptions.f7972v;
                    this.f7986i = gamesOptions.f7973w;
                    this.f7987j = gamesOptions.f7974x;
                    this.f7988k = gamesOptions.f7975y;
                    this.f7989l = gamesOptions.f7976z;
                    this.f7990m = gamesOptions.A;
                    this.f7991n = gamesOptions.B;
                }
            }

            /* synthetic */ Builder(com.google.android.gms.games.a aVar) {
                this();
            }

            /* synthetic */ Builder(GamesOptions gamesOptions, com.google.android.gms.games.a aVar) {
                this(gamesOptions);
            }
        }

        /* synthetic */ GamesOptions(boolean z10, boolean z11, int i10, boolean z12, int i11, String str, ArrayList arrayList, boolean z13, boolean z14, GoogleSignInAccount googleSignInAccount, String str2, int i12, int i13, int i14, com.google.android.gms.games.a aVar) {
            this(z10, z11, i10, z12, i11, str, arrayList, z13, z14, googleSignInAccount, str2, i12, i13, i14);
        }
    }
}
