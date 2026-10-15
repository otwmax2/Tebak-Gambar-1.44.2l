###### Class com.google.android.gms.internal.ads.zzfii (com.google.android.gms.internal.ads.zzfii)
.class public final Lcom/google/android/gms/internal/ads/zzfii;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/zzfhp;

.field private final d:Lcom/google/android/gms/internal/ads/zzfhr;

.field private final e:Lcom/google/android/gms/internal/ads/zzfih;

.field private final f:Lcom/google/android/gms/internal/ads/zzfih;

.field private g:Lcom/google/android/gms/tasks/Task;

.field private h:Lcom/google/android/gms/tasks/Task;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfhp;Lcom/google/android/gms/internal/ads/zzfhr;Lcom/google/android/gms/internal/ads/zzfif;Lcom/google/android/gms/internal/ads/zzfig;)V
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfii;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfii;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfii;->c:Lcom/google/android/gms/internal/ads/zzfhp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfii;->d:Lcom/google/android/gms/internal/ads/zzfhr;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfii;->e:Lcom/google/android/gms/internal/ads/zzfih;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfii;->f:Lcom/google/android/gms/internal/ads/zzfih;

    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfhp;Lcom/google/android/gms/internal/ads/zzfhr;)Lcom/google/android/gms/internal/ads/zzfii;
    .registers 12

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzfii;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfif;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfif;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfig;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzfig;-><init>()V

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfii;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfhp;Lcom/google/android/gms/internal/ads/zzfhr;Lcom/google/android/gms/internal/ads/zzfif;Lcom/google/android/gms/internal/ads/zzfig;)V

    iget-object p0, v7, Lcom/google/android/gms/internal/ads/zzfii;->d:Lcom/google/android/gms/internal/ads/zzfhr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfhr;->d()Z

    move-result p0

    if-eqz p0, :cond_28

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfic;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzfic;-><init>(Lcom/google/android/gms/internal/ads/zzfii;)V

    .line 2
    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzfii;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/zzfii;->g:Lcom/google/android/gms/tasks/Task;

    goto :goto_34

    .line 3
    :cond_28
    iget-object p0, v7, Lcom/google/android/gms/internal/ads/zzfii;->e:Lcom/google/android/gms/internal/ads/zzfih;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzfih;->zza()Lcom/google/android/gms/internal/ads/zzans;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/zzfii;->g:Lcom/google/android/gms/tasks/Task;

    .line 5
    :goto_34
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfid;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzfid;-><init>(Lcom/google/android/gms/internal/ads/zzfii;)V

    .line 6
    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzfii;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/zzfii;->h:Lcom/google/android/gms/tasks/Task;

    return-object v7
.end method

.method private static g(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/ads/zzans;)Lcom/google/android/gms/internal/ads/zzans;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 2
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzans;

    return-object p0
.end method

.method private final h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfii;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfii;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfie;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfie;-><init>(Lcom/google/android/gms/internal/ads/zzfii;)V

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->g(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzans;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfii;->g:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfii;->e:Lcom/google/android/gms/internal/ads/zzfih;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfih;->zza()Lcom/google/android/gms/internal/ads/zzans;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfii;->g(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/ads/zzans;)Lcom/google/android/gms/internal/ads/zzans;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzans;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfii;->h:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfii;->f:Lcom/google/android/gms/internal/ads/zzfih;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfih;->zza()Lcom/google/android/gms/internal/ads/zzans;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfii;->g(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/ads/zzans;)Lcom/google/android/gms/internal/ads/zzans;

    move-result-object v0

    return-object v0
.end method

.method final synthetic c()Lcom/google/android/gms/internal/ads/zzans;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfii;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzans;->j0()Lcom/google/android/gms/internal/ads/zzamv;

    move-result-object v1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    const-string v3, "^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 5
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 6
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 7
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 v2, 0xb

    .line 9
    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    :cond_38
    if-eqz v2, :cond_48

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamv;->s0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamv;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzamv;->r0(Z)Lcom/google/android/gms/internal/ads/zzamv;

    const/4 v0, 0x6

    .line 12
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzamv;->S(I)Lcom/google/android/gms/internal/ads/zzamv;

    .line 13
    :cond_48
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzans;

    return-object v0
.end method

.method final synthetic d()Lcom/google/android/gms/internal/ads/zzans;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfii;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfhx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzans;

    move-result-object v0

    return-object v0
.end method

.method final synthetic f(Ljava/lang/Exception;)V
    .registers 6

    .line 1
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_b

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfii;->c:Lcom/google/android/gms/internal/ads/zzfhp;

    const/16 v1, 0x7e9

    const-wide/16 v2, -0x1

    .line 3
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfhp;->c(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfic (com.google.android.gms.internal.ads.zzfic)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfic;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzfii;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfii;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfic;->a:Lcom/google/android/gms/internal/ads/zzfii;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfic;->a:Lcom/google/android/gms/internal/ads/zzfii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfii;->c()Lcom/google/android/gms/internal/ads/zzans;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzfid (com.google.android.gms.internal.ads.zzfid)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfid;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzfii;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfii;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfid;->a:Lcom/google/android/gms/internal/ads/zzfii;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfid;->a:Lcom/google/android/gms/internal/ads/zzfii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfii;->d()Lcom/google/android/gms/internal/ads/zzans;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzfie (com.google.android.gms.internal.ads.zzfie)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfie;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzfii;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfii;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfie;->a:Lcom/google/android/gms/internal/ads/zzfii;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfie;->a:Lcom/google/android/gms/internal/ads/zzfii;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfii;->f(Ljava/lang/Exception;)V

    return-void
.end method
