###### Class com.google.android.gms.internal.ads.zzacn (com.google.android.gms.internal.ads.zzacn)
.class public final Lcom/google/android/gms/internal/ads/zzacn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzx;


# instance fields
.field private final o:J

.field private final p:Lcom/google/android/gms/internal/ads/zzzx;


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/zzzx;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzacn;->o:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzacn;->p:Lcom/google/android/gms/internal/ads/zzzx;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzacn;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacn;->o:J

    return-wide v0
.end method


# virtual methods
.method public final e(Lcom/google/android/gms/internal/ads/zzaax;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacn;->p:Lcom/google/android/gms/internal/ads/zzzx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzacm;-><init>(Lcom/google/android/gms/internal/ads/zzacn;Lcom/google/android/gms/internal/ads/zzaax;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    return-void
.end method

.method public final f0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacn;->p:Lcom/google/android/gms/internal/ads/zzzx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzx;->f0()V

    return-void
.end method

.method public final q(II)Lcom/google/android/gms/internal/ads/zzabb;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacn;->p:Lcom/google/android/gms/internal/ads/zzzx;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object p1

    return-object p1
.end method
