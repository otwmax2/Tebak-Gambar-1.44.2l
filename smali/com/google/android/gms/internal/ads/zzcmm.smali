###### Class com.google.android.gms.internal.ads.zzcmm (com.google.android.gms.internal.ads.zzcmm)
.class public final Lcom/google/android/gms/internal/ads/zzcmm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcvj;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzezs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzezs;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmm;->o:Lcom/google/android/gms/internal/ads/zzezs;

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmm;->o:Lcom/google/android/gms/internal/ads/zzezs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzezs;->z()V

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmm;->o:Lcom/google/android/gms/internal/ads/zzezs;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzezs;->x(Landroid/content/Context;)V
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/zzezc; {:try_start_0 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception p1

    const-string v0, "Cannot invoke onResume for the mediation adapter."

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final o(Landroid/content/Context;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmm;->o:Lcom/google/android/gms/internal/ads/zzezs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzezs;->l()V
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzezc; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, "Cannot invoke onDestroy for the mediation adapter."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final p(Landroid/content/Context;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmm;->o:Lcom/google/android/gms/internal/ads/zzezs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzezs;->y()V
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzezc; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, "Cannot invoke onPause for the mediation adapter."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
