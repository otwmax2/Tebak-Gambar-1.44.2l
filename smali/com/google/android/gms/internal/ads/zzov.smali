###### Class com.google.android.gms.internal.ads.zzov (com.google.android.gms.internal.ads.zzov)
.class public final Lcom/google/android/gms/internal/ads/zzov;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:[Lcom/google/android/gms/internal/ads/zzde;

.field private final b:Lcom/google/android/gms/internal/ads/zzpm;

.field private final c:Lcom/google/android/gms/internal/ads/zzdh;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzde;)V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzpm;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdh;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzde;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzov;->a:[Lcom/google/android/gms/internal/ads/zzde;

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v3, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->b:Lcom/google/android/gms/internal/ads/zzpm;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzov;->c:Lcom/google/android/gms/internal/ads/zzdh;

    aput-object v0, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    return-void
.end method


# virtual methods
.method public final a(J)J
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->c:Lcom/google/android/gms/internal/ads/zzdh;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdh;->h(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final b()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->b:Lcom/google/android/gms/internal/ads/zzpm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpm;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzby;)Lcom/google/android/gms/internal/ads/zzby;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->c:Lcom/google/android/gms/internal/ads/zzdh;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzby;->a:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdh;->j(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->c:Lcom/google/android/gms/internal/ads/zzdh;

    .line 2
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzby;->b:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdh;->i(F)V

    return-object p1
.end method

.method public final d(Z)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->b:Lcom/google/android/gms/internal/ads/zzpm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpm;->o(Z)V

    return p1
.end method

.method public final e()[Lcom/google/android/gms/internal/ads/zzde;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->a:[Lcom/google/android/gms/internal/ads/zzde;

    return-object v0
.end method
