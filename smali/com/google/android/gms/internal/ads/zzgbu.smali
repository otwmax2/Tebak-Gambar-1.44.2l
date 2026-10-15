###### Class com.google.android.gms.internal.ads.zzgbu (com.google.android.gms.internal.ads.zzgbu)
.class final Lcom/google/android/gms/internal/ads/zzgbu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:[B

.field private final b:[B


# direct methods
.method constructor <init>([B[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbu;->a:[B

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbu;->b:[B

    return-void
.end method


# virtual methods
.method final a()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbu;->b:[B

    return-object v0
.end method

.method final b()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbu;->a:[B

    return-object v0
.end method
