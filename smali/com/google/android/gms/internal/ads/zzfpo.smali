###### Class com.google.android.gms.internal.ads.zzfpo (com.google.android.gms.internal.ads.zzfpo)
.class final Lcom/google/android/gms/internal/ads/zzfpo;
.super Lcom/google/android/gms/internal/ads/zzfpq;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic s:Lcom/google/android/gms/internal/ads/zzfpu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfpu;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpo;->s:Lcom/google/android/gms/internal/ads/zzfpu;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfpq;-><init>(Lcom/google/android/gms/internal/ads/zzfpu;Lcom/google/android/gms/internal/ads/zzfpm;)V

    return-void
.end method


# virtual methods
.method final a(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpo;->s:Lcom/google/android/gms/internal/ads/zzfpu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    aget-object p1, v0, p1

    return-object p1
.end method
