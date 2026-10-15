###### Class com.google.android.gms.internal.ads.zzent (com.google.android.gms.internal.ads.zzent)
.class public final Lcom/google/android/gms/internal/ads/zzent;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzepn;

.field private final b:J

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzepn;JLjava/util/concurrent/ScheduledExecutorService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzent;->a:Lcom/google/android/gms/internal/ads/zzepn;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzent;->b:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzent;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent;->a:Lcom/google/android/gms/internal/ads/zzepn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzepn;->zza()I

    move-result v0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent;->a:Lcom/google/android/gms/internal/ads/zzepn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzepn;->zzb()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzent;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_16

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzent;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfuj;->n(Lcom/google/android/gms/internal/ads/zzfut;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    :cond_16
    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzens;->a:Lcom/google/android/gms/internal/ads/zzens;

    .line 3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfuj;->f(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzftq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzens (com.google.android.gms.internal.ads.zzens)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzens;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftq;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzens;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzens;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzens;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzens;->a:Lcom/google/android/gms/internal/ads/zzens;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method
