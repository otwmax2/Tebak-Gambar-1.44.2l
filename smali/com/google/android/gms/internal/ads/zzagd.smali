###### Class com.google.android.gms.internal.ads.zzagd (com.google.android.gms.internal.ads.zzagd)
.class final Lcom/google/android/gms/internal/ads/zzagd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/util/UUID;

.field private final b:[B


# direct methods
.method public constructor <init>(Ljava/util/UUID;I[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagd;->a:Ljava/util/UUID;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagd;->b:[B

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzagd;)Ljava/util/UUID;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzagd;->a:Ljava/util/UUID;

    return-object p0
.end method
