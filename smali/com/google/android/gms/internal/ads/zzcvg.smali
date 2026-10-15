###### Class com.google.android.gms.internal.ads.zzcvg (com.google.android.gms.internal.ads.zzcvg)
.class public final Lcom/google/android/gms/internal/ads/zzcvg;
.super Lcom/google/android/gms/internal/ads/zzczy;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private p:Z


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzczy;-><init>(Ljava/util/Set;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcvg;->p:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcvg;->p:Z

    if-nez v0, :cond_f

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcvf;->a:Lcom/google/android/gms/internal/ads/zzcvf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzczy;->W0(Lcom/google/android/gms/internal/ads/zzczx;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcvg;->p:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    monitor-exit p0

    return-void

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzcvf (com.google.android.gms.internal.ads.zzcvf)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcvf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczx;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzcvf;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcvf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcvf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcvf;->a:Lcom/google/android/gms/internal/ads/zzcvf;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcvi;

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcvi;->j()V

    return-void
.end method
