###### Class com.google.android.gms.games.Games (com.google.android.gms.games.Games)
.class public final Lcom/google/android/gms/games/Games;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;,
        Lcom/google/android/gms/games/Games$zzb;,
        Lcom/google/android/gms/games/Games$a;,
        Lcom/google/android/gms/games/Games$GamesOptions;
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/games/internal/zzf;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/games/internal/zzf;",
            "Lcom/google/android/gms/games/Games$GamesOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/games/internal/zzf;",
            "Lcom/google/android/gms/games/Games$GamesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/common/api/Scope;

.field public static final e:Lcom/google/android/gms/common/api/Scope;

.field public static final f:Lcom/google/android/gms/common/api/Scope;

.field public static final g:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/games/Games$GamesOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final h:Lcom/google/android/gms/common/api/Scope;
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field

.field private static final i:Lcom/google/android/gms/common/api/Api;
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/games/Games$GamesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lcom/google/android/gms/games/GamesMetadata;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final k:Lcom/google/android/gms/games/achievement/Achievements;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final l:Lcom/google/android/gms/games/event/Events;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final m:Lcom/google/android/gms/games/leaderboard/Leaderboards;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final n:Lcom/google/android/gms/games/Players;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final o:Lcom/google/android/gms/games/snapshot/Snapshots;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final p:Lcom/google/android/gms/games/stats/Stats;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final q:Lcom/google/android/gms/games/video/Videos;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v1, Lcom/google/android/gms/games/a;

    invoke-direct {v1}, Lcom/google/android/gms/games/a;-><init>()V

    sput-object v1, Lcom/google/android/gms/games/Games;->b:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 3
    new-instance v2, Lcom/google/android/gms/games/b;

    invoke-direct {v2}, Lcom/google/android/gms/games/b;-><init>()V

    sput-object v2, Lcom/google/android/gms/games/Games;->c:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 4
    new-instance v3, Lcom/google/android/gms/common/api/Scope;

    const-string v4, "https://www.googleapis.com/auth/games"

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/games/Games;->d:Lcom/google/android/gms/common/api/Scope;

    .line 5
    new-instance v3, Lcom/google/android/gms/common/api/Scope;

    const-string v4, "https://www.googleapis.com/auth/games_lite"

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/games/Games;->e:Lcom/google/android/gms/common/api/Scope;

    .line 6
    new-instance v3, Lcom/google/android/gms/common/api/Scope;

    const-string v4, "https://www.googleapis.com/auth/drive.appdata"

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/games/Games;->f:Lcom/google/android/gms/common/api/Scope;

    .line 7
    new-instance v3, Lcom/google/android/gms/common/api/Api;

    const-string v4, "Games.API"

    invoke-direct {v3, v4, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v3, Lcom/google/android/gms/games/Games;->g:Lcom/google/android/gms/common/api/Api;

    .line 8
    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    const-string v3, "https://www.googleapis.com/auth/games.firstparty"

    invoke-direct {v1, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/games/Games;->h:Lcom/google/android/gms/common/api/Scope;

    .line 9
    new-instance v1, Lcom/google/android/gms/common/api/Api;

    const-string v3, "Games.API_1P"

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v1, Lcom/google/android/gms/games/Games;->i:Lcom/google/android/gms/common/api/Api;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/games/zzba;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games/zzba;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->j:Lcom/google/android/gms/games/GamesMetadata;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/games/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->k:Lcom/google/android/gms/games/achievement/Achievements;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/games/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games/zzai;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->l:Lcom/google/android/gms/games/event/Events;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/games/zzbu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games/zzbu;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->m:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/games/zzcw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games/zzcw;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->n:Lcom/google/android/gms/games/Players;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/games/zzdq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games/zzdq;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->o:Lcom/google/android/gms/games/snapshot/Snapshots;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/games/zzee;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games/zzee;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->p:Lcom/google/android/gms/games/stats/Stats;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/games/zzeq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games/zzeq;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->q:Lcom/google/android/gms/games/video/Videos;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;
    .registers 3

    const-string v0, "GoogleSignInAccount must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/games/zzf;

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->d(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games/zzf;-><init>(Landroid/app/Activity;Lcom/google/android/gms/games/Games$GamesOptions;)V

    return-object v0
.end method

.method public static b(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/GamesClient;
    .registers 3

    const-string v0, "GoogleSignInAccount must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/games/zzaq;

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->d(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games/zzaq;-><init>(Landroid/app/Activity;Lcom/google/android/gms/games/Games$GamesOptions;)V

    return-object v0
.end method

.method public static c(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/PlayersClient;
    .registers 3

    const-string v0, "GoogleSignInAccount must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/games/zzcm;

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->d(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games/zzcm;-><init>(Landroid/app/Activity;Lcom/google/android/gms/games/Games$GamesOptions;)V

    return-object v0
.end method

.method private static d(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/Games$GamesOptions;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/games/Games$GamesOptions;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/games/Games$GamesOptions;)Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object p0

    const v0, 0x101113

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->b(I)Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->a()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object p0

    return-object p0
.end method

###### Class com.google.android.gms.games.Games.GamesOptions (com.google.android.gms.games.Games$GamesOptions)
.class public final Lcom/google/android/gms/games/Games$GamesOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions;
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GamesOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    }
.end annotation


# instance fields
.field public final A:I

.field public final B:I

.field public final o:Z

.field public final p:Z

.field public final q:I

.field public final r:Z

.field public final s:I

.field public final t:Ljava/lang/String;

.field public final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Z

.field public final w:Z

.field public final x:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field public final y:Ljava/lang/String;

.field private final z:I


# direct methods
.method private constructor <init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;III)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIZI",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->o:Z

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->p:Z

    .line 4
    iput p3, p0, Lcom/google/android/gms/games/Games$GamesOptions;->q:I

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/games/Games$GamesOptions;->r:Z

    .line 6
    iput p5, p0, Lcom/google/android/gms/games/Games$GamesOptions;->s:I

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/games/Games$GamesOptions;->t:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/games/Games$GamesOptions;->u:Ljava/util/ArrayList;

    .line 9
    iput-boolean p8, p0, Lcom/google/android/gms/games/Games$GamesOptions;->v:Z

    .line 10
    iput-boolean p9, p0, Lcom/google/android/gms/games/Games$GamesOptions;->w:Z

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/games/Games$GamesOptions;->x:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 12
    iput-object p11, p0, Lcom/google/android/gms/games/Games$GamesOptions;->y:Ljava/lang/String;

    .line 13
    iput p12, p0, Lcom/google/android/gms/games/Games$GamesOptions;->z:I

    .line 14
    iput p13, p0, Lcom/google/android/gms/games/Games$GamesOptions;->A:I

    .line 15
    iput p14, p0, Lcom/google/android/gms/games/Games$GamesOptions;->B:I

    return-void
.end method

.method synthetic constructor <init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;IIILcom/google/android/gms/games/a;)V
    .registers 16

    .line 16
    invoke-direct/range {p0 .. p14}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;III)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/games/Games$GamesOptions;)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .registers 3

    .line 1
    new-instance p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/games/a;)V

    .line 2
    iput-object p0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/games/Games$GamesOptions;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->z:I

    return p0
.end method


# virtual methods
.method public final R1()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->x:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->o:Z

    const-string v2, "com.google.android.gms.games.key.isHeadless"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->p:Z

    const-string v2, "com.google.android.gms.games.key.showConnectingPopup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->q:I

    const-string v2, "com.google.android.gms.games.key.connectingPopupGravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->r:Z

    const-string v2, "com.google.android.gms.games.key.retryingSignIn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->s:I

    const-string v2, "com.google.android.gms.games.key.sdkVariant"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->t:Ljava/lang/String;

    const-string v2, "com.google.android.gms.games.key.forceResolveAccountKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->u:Ljava/util/ArrayList;

    const-string v2, "com.google.android.gms.games.key.proxyApis"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 9
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->v:Z

    const-string v2, "com.google.android.gms.games.key.unauthenticated"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->w:Z

    const-string v2, "com.google.android.gms.games.key.skipWelcomePopup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->x:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const-string v2, "com.google.android.gms.games.key.googleSignInAccount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->y:Ljava/lang/String;

    const-string v2, "com.google.android.gms.games.key.realClientPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->A:I

    const-string v2, "com.google.android.gms.games.key.API_VERSION"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->B:I

    const-string v2, "com.google.android.gms.games.key.authenticationStrategy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/games/Games$GamesOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/games/Games$GamesOptions;

    .line 3
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->o:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->o:Z

    if-ne v1, v3, :cond_7f

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->p:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->p:Z

    if-ne v1, v3, :cond_7f

    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->q:I

    iget v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->q:I

    if-ne v1, v3, :cond_7f

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->r:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->r:Z

    if-ne v1, v3, :cond_7f

    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->s:I

    iget v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->s:I

    if-ne v1, v3, :cond_7f

    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->t:Ljava/lang/String;

    if-nez v1, :cond_33

    iget-object v1, p1, Lcom/google/android/gms/games/Games$GamesOptions;->t:Ljava/lang/String;

    if-nez v1, :cond_7f

    goto :goto_3b

    :cond_33
    iget-object v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->t:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    :goto_3b
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->u:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->u:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->v:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->v:Z

    if-ne v1, v3, :cond_7f

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->w:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->w:Z

    if-ne v1, v3, :cond_7f

    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->x:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_5a

    iget-object v1, p1, Lcom/google/android/gms/games/Games$GamesOptions;->x:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_7f

    goto :goto_62

    :cond_5a
    iget-object v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->x:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 6
    invoke-virtual {v1, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    :goto_62
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->y:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->y:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7f

    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->z:I

    iget v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->z:I

    if-ne v1, v3, :cond_7f

    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->A:I

    iget v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->A:I

    if-ne v1, v3, :cond_7f

    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->B:I

    iget p1, p1, Lcom/google/android/gms/games/Games$GamesOptions;->B:I

    if-ne v1, p1, :cond_7f

    return v0

    :cond_7f
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->o:Z

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->p:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->r:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->s:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->t:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_21

    const/4 v1, 0x0

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_25
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->v:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->w:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->x:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_41

    const/4 v1, 0x0

    goto :goto_45

    :cond_41
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->hashCode()I

    move-result v1

    :goto_45
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->y:Ljava/lang/String;

    if-nez v1, :cond_4d

    goto :goto_51

    :cond_4d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_51
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->z:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->A:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->B:I

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.google.android.gms.games.Games.GamesOptions.Builder (com.google.android.gms.games.Games$GamesOptions$Builder)
.class public final Lcom/google/android/gms/games/Games$GamesOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games$GamesOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final o:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->a:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->b:Z

    const/16 v1, 0x11

    .line 4
    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->c:I

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->d:Z

    const/16 v1, 0x1110

    .line 6
    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->e:I

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->f:Ljava/lang/String;

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->g:Ljava/util/ArrayList;

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->h:Z

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->i:Z

    .line 11
    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 12
    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->k:Ljava/lang/String;

    .line 13
    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->l:I

    const/16 v1, 0x8

    .line 14
    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->m:I

    .line 15
    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->n:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions;)V
    .registers 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->a:Z

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->b:Z

    const/16 v1, 0x11

    .line 19
    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->c:I

    .line 20
    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->d:Z

    const/16 v1, 0x1110

    .line 21
    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->e:I

    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->f:Ljava/lang/String;

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->g:Ljava/util/ArrayList;

    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->h:Z

    .line 25
    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->i:Z

    .line 26
    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 27
    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->k:Ljava/lang/String;

    .line 28
    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->l:I

    const/16 v1, 0x8

    .line 29
    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->m:I

    .line 30
    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->n:I

    if-eqz p1, :cond_69

    .line 31
    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->o:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->a:Z

    .line 32
    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->p:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->b:Z

    .line 33
    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->q:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->c:I

    .line 34
    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->r:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->d:Z

    .line 35
    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->s:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->e:I

    .line 36
    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->f:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->u:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->g:Ljava/util/ArrayList;

    .line 38
    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->v:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->h:Z

    .line 39
    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->w:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->i:Z

    .line 40
    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->x:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 41
    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->k:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/games/Games$GamesOptions;->b(Lcom/google/android/gms/games/Games$GamesOptions;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->l:I

    .line 43
    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->A:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->m:I

    .line 44
    iget p1, p1, Lcom/google/android/gms/games/Games$GamesOptions;->B:I

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->n:I

    :cond_69
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/games/a;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/Games$GamesOptions;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/a;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/games/Games$GamesOptions;
    .registers 19

    move-object/from16 v0, p0

    .line 1
    new-instance v17, Lcom/google/android/gms/games/Games$GamesOptions;

    iget-boolean v2, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->a:Z

    iget-boolean v3, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->b:Z

    iget v4, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->c:I

    iget-boolean v5, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->d:Z

    iget v6, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->e:I

    iget-object v7, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->f:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->g:Ljava/util/ArrayList;

    iget-boolean v9, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->h:Z

    iget-boolean v10, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->i:Z

    iget-object v11, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object v12, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->k:Ljava/lang/String;

    iget v13, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->l:I

    iget v14, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->m:I

    iget v15, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->n:I

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;IIILcom/google/android/gms/games/a;)V

    return-object v17
.end method

.method public final b(I)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->e:I

    return-object p0
.end method

###### Class com.google.android.gms.games.Games.GetServerAuthCodeResult (com.google.android.gms.games.Games$GetServerAuthCodeResult)
.class public interface abstract Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetServerAuthCodeResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class com.google.android.gms.games.Games.a (com.google.android.gms.games.Games$a)
.class Lcom/google/android/gms/games/Games$a;
.super Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
        "Lcom/google/android/gms/games/internal/zzf;",
        "Lcom/google/android/gms/games/Games$GamesOptions;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/games/Games$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;
    .registers 14

    .line 1
    check-cast p4, Lcom/google/android/gms/games/Games$GamesOptions;

    if-nez p4, :cond_e

    .line 2
    new-instance p4, Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/a;)V

    invoke-virtual {p4}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->a()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object p4

    :cond_e
    move-object v4, p4

    .line 3
    new-instance p4, Lcom/google/android/gms/games/internal/zzf;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/games/internal/zzf;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    return-object p4
.end method

###### Class com.google.android.gms.games.Games.zzb (com.google.android.gms.games.Games$zzb)
.class public abstract Lcom/google/android/gms/games/Games$zzb;
.super Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
        "TT;",
        "Lcom/google/android/gms/games/internal/zzf;",
        ">;"
    }
.end annotation


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->k(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
