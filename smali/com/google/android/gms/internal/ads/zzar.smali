###### Class com.google.android.gms.internal.ads.zzar (com.google.android.gms.internal.ads.zzar)
.class public final Lcom/google/android/gms/internal/ads/zzar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfqn;

.field private final b:Lcom/google/android/gms/internal/ads/zzfqk;


# direct methods
.method private constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqn;->d()Lcom/google/android/gms/internal/ads/zzfqn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzar;->a:Lcom/google/android/gms/internal/ads/zzfqn;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzar;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaq;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqn;->d()Lcom/google/android/gms/internal/ads/zzfqn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzar;->a:Lcom/google/android/gms/internal/ads/zzfqn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzar;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    return-void
.end method
