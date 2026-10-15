###### Class com.google.android.gms.internal.ads.zzesv (com.google.android.gms.internal.ads.zzesv)
.class public final Lcom/google/android/gms/internal/ads/zzesv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbyj;

.field private final b:Z

.field private final c:Z

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final e:Lcom/google/android/gms/internal/ads/zzfuu;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/ads/zzbxy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbyj;ZZLcom/google/android/gms/internal/ads/zzbxy;Lcom/google/android/gms/internal/ads/zzfuu;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;[B)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->a:Lcom/google/android/gms/internal/ads/zzbyj;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzesv;->b:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzesv;->c:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzesv;->g:Lcom/google/android/gms/internal/ads/zzbxy;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzesv;->e:Lcom/google/android/gms/internal/ads/zzfuu;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzesv;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzesv;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzesw;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesv;->a:Lcom/google/android/gms/internal/ads/zzbyj;

    const-string v1, "TrustlessTokenSignal"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza()I
    .registers 2

    const/16 v0, 0x32

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->K6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzesv;->c:Z

    if-nez v0, :cond_18

    goto :goto_1d

    .line 4
    :cond_18
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1d
    :goto_1d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzesv;->b:Z

    if-nez v0, :cond_26

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0

    .line 7
    :cond_26
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzest;->a:Lcom/google/android/gms/internal/ads/zzest;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzesv;->e:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 8
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfuj;->l(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfnj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcy;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzesv;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfuj;->n(Lcom/google/android/gms/internal/ads/zzfut;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzesu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzesu;-><init>(Lcom/google/android/gms/internal/ads/zzesv;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzesv;->e:Lcom/google/android/gms/internal/ads/zzfuu;

    const-class v3, Ljava/lang/Exception;

    .line 12
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfuj;->e(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfnj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzest (com.google.android.gms.internal.ads.zzest)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzest;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzest;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzest;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzest;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzest;->a:Lcom/google/android/gms/internal/ads/zzest;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzesw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzesw;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzesu (com.google.android.gms.internal.ads.zzesu)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzesu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzesv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzesv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesu;->a:Lcom/google/android/gms/internal/ads/zzesv;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesu;->a:Lcom/google/android/gms/internal/ads/zzesv;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzesv;->a(Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzesw;

    const/4 p1, 0x0

    return-object p1
.end method
