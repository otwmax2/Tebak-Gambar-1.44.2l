###### Class com.google.android.gms.internal.ads.zzeks (com.google.android.gms.internal.ads.zzeks)
.class public final Lcom/google/android/gms/internal/ads/zzeks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/zzbyj;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field b:Lcom/google/android/gms/appset/AppSetIdClient;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Lcom/google/android/gms/internal/ads/zzfuu;

.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbyj;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfuu;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->u2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/appset/AppSet;->a(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->b:Lcom/google/android/gms/appset/AppSetIdClient;

    :cond_1b
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeks;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeks;->a:Lcom/google/android/gms/internal/ads/zzbyj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeks;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeks;->d:Lcom/google/android/gms/internal/ads/zzfuu;

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    const/16 v0, 0xb

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->q2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_ba

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->v2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_ba

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->r2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->b:Lcom/google/android/gms/appset/AppSetIdClient;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/appset/AppSetIdClient;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfkz;->a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzekp;->a:Lcom/google/android/gms/internal/ads/zzekp;

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfuj;->l(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfnj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    goto :goto_b9

    :cond_4b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->u2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->e:Landroid/content/Context;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfaa;->a(Landroid/content/Context;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_6a

    .line 14
    :cond_64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeks;->b:Lcom/google/android/gms/appset/AppSetIdClient;

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/appset/AppSetIdClient;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_6a
    if-nez v0, :cond_76

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekt;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzekt;-><init>(Ljava/lang/String;I)V

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    goto :goto_b9

    .line 18
    :cond_76
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfkz;->a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzekq;->a:Lcom/google/android/gms/internal/ads/zzekq;

    .line 19
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 20
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfuj;->m(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzftq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->s2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_ac

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->t2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeks;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfuj;->n(Lcom/google/android/gms/internal/ads/zzfut;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    :cond_ac
    new-instance v1, Lcom/google/android/gms/internal/ads/zzekr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzekr;-><init>(Lcom/google/android/gms/internal/ads/zzeks;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeks;->d:Lcom/google/android/gms/internal/ads/zzfuu;

    const-class v3, Ljava/lang/Exception;

    .line 26
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfuj;->e(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfnj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    :goto_b9
    return-object v0

    .line 27
    :cond_ba
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekt;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzekt;-><init>(Ljava/lang/String;I)V

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzekp (com.google.android.gms.internal.ads.zzekp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzekp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzekp;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzekp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzekp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzekp;->a:Lcom/google/android/gms/internal/ads/zzekp;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekt;

    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->b()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzekt;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzekq (com.google.android.gms.internal.ads.zzekq)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzekq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftq;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzekq;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzekq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzekq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzekq;->a:Lcom/google/android/gms/internal/ads/zzekq;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 4

    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    if-nez p1, :cond_10

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekt;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzekt;-><init>(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    goto :goto_21

    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekt;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->b()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzekt;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    :goto_21
    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzekr (com.google.android.gms.internal.ads.zzekr)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzekr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzeks;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeks;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekr;->a:Lcom/google/android/gms/internal/ads/zzeks;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekr;->a:Lcom/google/android/gms/internal/ads/zzeks;

    check-cast p1, Ljava/lang/Exception;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeks;->a:Lcom/google/android/gms/internal/ads/zzbyj;

    const-string v1, "AppSetIdInfoSignal"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzekt;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzekt;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method
