###### Class com.google.android.gms.internal.ads.zzffj (com.google.android.gms.internal.ads.zzffj)
.class public final Lcom/google/android/gms/internal/ads/zzffj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)V
    .registers 4

    const-string v0, "Application Context cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfgr;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->a:Z

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->a:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgf;->b()Lcom/google/android/gms/internal/ads/zzfgf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgf;->c(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfga;->a()Lcom/google/android/gms/internal/ads/zzfga;

    move-result-object v0

    .line 4
    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_21

    .line 5
    move-object v1, p1

    check-cast v1, Landroid/app/Application;

    .line 6
    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 7
    :cond_21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfgp;->g(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgc;->b()Lcom/google/android/gms/internal/ads/zzfgc;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgc;->c(Landroid/content/Context;)V

    :cond_2b
    return-void
.end method

.method final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->a:Z

    return v0
.end method
