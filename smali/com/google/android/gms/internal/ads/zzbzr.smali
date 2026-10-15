###### Class com.google.android.gms.internal.ads.zzbzr (com.google.android.gms.internal.ads.zzbzr)
.class public final Lcom/google/android/gms/internal/ads/zzbzr;
.super Lcom/google/android/gms/internal/ads/zzbzs;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final p:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbzs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzr;->p:Ljava/lang/Object;

    return-void
.end method

.method public static g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbzr;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbzr;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final h()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzr;->p:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->c(Ljava/lang/Object;)Z

    return-void
.end method
