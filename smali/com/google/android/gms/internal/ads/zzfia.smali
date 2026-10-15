###### Class com.google.android.gms.internal.ads.zzfia (com.google.android.gms.internal.ads.zzfia)
.class public final Lcom/google/android/gms/internal/ads/zzfia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfia;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfia;->b:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfiq;->I()Lcom/google/android/gms/internal/ads/zzfio;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfia;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfio;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfio;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfio;->q(I)Lcom/google/android/gms/internal/ads/zzfio;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfim;->I()Lcom/google/android/gms/internal/ads/zzfil;

    move-result-object v2

    .line 5
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfil;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfil;

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfil;->p(I)Lcom/google/android/gms/internal/ads/zzfil;

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfio;->p(Lcom/google/android/gms/internal/ads/zzfil;)Lcom/google/android/gms/internal/ads/zzfio;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfiq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfia;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfia;->b:Landroid/os/Looper;

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfib;

    .line 10
    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfib;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzfiq;)V

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfib;->a()V

    return-void
.end method
