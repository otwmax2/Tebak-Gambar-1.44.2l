###### Class com.google.android.gms.internal.ads.zzaaw (com.google.android.gms.internal.ads.zzaaw)
.class public Lcom/google/android/gms/internal/ads/zzaaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaax;


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/gms/internal/ads/zzaav;


# direct methods
.method public constructor <init>(JJ)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaaw;->a:J

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaav;

    if-nez v0, :cond_10

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaay;->c:Lcom/google/android/gms/internal/ads/zzaay;

    goto :goto_16

    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaay;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaay;-><init>(JJ)V

    move-object p1, v0

    :goto_16
    invoke-direct {v1, p1, p1}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzaay;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaw;->b:Lcom/google/android/gms/internal/ads/zzaav;

    return-void
.end method


# virtual methods
.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaaw;->a:J

    return-wide v0
.end method

.method public final c(J)Lcom/google/android/gms/internal/ads/zzaav;
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaw;->b:Lcom/google/android/gms/internal/ads/zzaav;

    return-object p1
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
