###### Class com.google.android.gms.internal.ads.zzgok (com.google.android.gms.internal.ads.zzgok)
.class public final Lcom/google/android/gms/internal/ads/zzgok;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgoj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgoj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgok;->a:Lcom/google/android/gms/internal/ads/zzgoj;

    return-void
.end method

.method public static b([BLcom/google/android/gms/internal/ads/zzfxg;)Lcom/google/android/gms/internal/ads/zzgok;
    .registers 2

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgok;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgoj;->b([B)Lcom/google/android/gms/internal/ads/zzgoj;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgok;-><init>(Lcom/google/android/gms/internal/ads/zzgoj;)V

    return-object p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgok;->a:Lcom/google/android/gms/internal/ads/zzgoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoj;->a()I

    move-result v0

    return v0
.end method
