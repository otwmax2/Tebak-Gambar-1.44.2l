###### Class com.google.android.gms.internal.ads.zzcwi (com.google.android.gms.internal.ads.zzcwi)
.class public final Lcom/google/android/gms/internal/ads/zzcwi;
.super Lcom/google/android/gms/internal/ads/zzczy;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbgi;


# instance fields
.field private final p:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzczy;-><init>(Ljava/util/Set;)V

    new-instance p1, Landroid/os/Bundle;

    .line 2
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwi;->p:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final declared-synchronized Y0()Landroid/os/Bundle;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwi;->p:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized w(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwi;->p:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcwh;->a:Lcom/google/android/gms/internal/ads/zzcwh;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzczy;->W0(Lcom/google/android/gms/internal/ads/zzczx;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.google.android.gms.internal.ads.zzcwh (com.google.android.gms.internal.ads.zzcwh)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcwh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczx;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzcwh;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcwh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcwh;->a:Lcom/google/android/gms/internal/ads/zzcwh;

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

    check-cast p1, Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;->o()V

    return-void
.end method
