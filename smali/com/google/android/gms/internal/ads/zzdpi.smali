###### Class com.google.android.gms.internal.ads.zzdpi (com.google.android.gms.internal.ads.zzdpi)
.class public final Lcom/google/android/gms/internal/ads/zzdpi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdpn;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpn;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpi;->a:Lcom/google/android/gms/internal/ads/zzdpn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpn;->f()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpi;->c:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpi;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzdpi;)Lcom/google/android/gms/internal/ads/zzdpn;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->a:Lcom/google/android/gms/internal/ads/zzdpn;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzdpi;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->c:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zzdpi;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzdph;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdph;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdph;-><init>(Lcom/google/android/gms/internal/ads/zzdpi;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdph;->a(Lcom/google/android/gms/internal/ads/zzdph;)Lcom/google/android/gms/internal/ads/zzdph;

    return-object v0
.end method
