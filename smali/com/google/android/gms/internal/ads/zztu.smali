###### Class com.google.android.gms.internal.ads.zztu (com.google.android.gms.internal.ads.zztu)
.class final Lcom/google/android/gms/internal/ads/zztu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzur;

.field public final b:[Z

.field public final c:[Z

.field public final d:[Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzur;[Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztu;->a:Lcom/google/android/gms/internal/ads/zzur;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztu;->b:[Z

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzur;->a:I

    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztu;->c:[Z

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztu;->d:[Z

    return-void
.end method
