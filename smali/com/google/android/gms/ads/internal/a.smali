###### Class com.google.android.gms.ads.internal.a (com.google.android.gms.ads.internal.a)
.class final Lcom/google/android/gms/ads/internal/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfis;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/ads/internal/zzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzi;->i(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/ads/zzfhp;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfhp;->d(IJ)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final b(IJLjava/lang/String;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/ads/internal/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzi;->i(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/ads/zzfhp;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    .line 2
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/zzfhp;->e(IJLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
