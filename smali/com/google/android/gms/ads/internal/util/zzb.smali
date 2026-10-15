###### Class com.google.android.gms.ads.internal.util.zzb (com.google.android.gms.ads.internal.util.zzb)
.class public abstract Lcom/google/android/gms/ads/internal/util/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private volatile b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/util/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/util/a;-><init>(Lcom/google/android/gms/ads/internal/util/zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzb;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/ads/internal/util/zzb;Ljava/lang/Thread;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzb;->b:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzn;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzb;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuu;->g(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method
