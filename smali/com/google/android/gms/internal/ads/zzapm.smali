###### Class com.google.android.gms.internal.ads.zzapm (com.google.android.gms.internal.ads.zzapm)
.class final Lcom/google/android/gms/internal/ads/zzapm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfis;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzfhp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfhp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->a:Lcom/google/android/gms/internal/ads/zzfhp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->a:Lcom/google/android/gms/internal/ads/zzfhp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfhp;->d(IJ)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final b(IJLjava/lang/String;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->a:Lcom/google/android/gms/internal/ads/zzfhp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    .line 2
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/zzfhp;->e(IJLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
