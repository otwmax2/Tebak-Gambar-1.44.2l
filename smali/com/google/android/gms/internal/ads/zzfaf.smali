###### Class com.google.android.gms.internal.ads.zzfaf (com.google.android.gms.internal.ads.zzfaf)
.class public final Lcom/google/android/gms/internal/ads/zzfaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzfba;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfaf;->a:Lcom/google/android/gms/internal/ads/zzfba;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfaf;->a:Lcom/google/android/gms/internal/ads/zzfba;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfba;->a:Lcom/google/android/gms/internal/ads/zzfbf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbf;->f()V

    :cond_9
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzfba;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfaf;->a:Lcom/google/android/gms/internal/ads/zzfba;

    return-void
.end method
