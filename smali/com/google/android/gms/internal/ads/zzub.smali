###### Class com.google.android.gms.internal.ads.zzub (com.google.android.gms.internal.ads.zzub)
.class final Lcom/google/android/gms/internal/ads/zzub;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwn;


# instance fields
.field public a:J

.field public b:J

.field public c:Lcom/google/android/gms/internal/ads/zzwm;

.field public d:Lcom/google/android/gms/internal/ads/zzub;


# direct methods
.method public constructor <init>(JI)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p3, 0x10000

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzub;->e(JI)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzwm;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzub;->c:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final b(J)I
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzub;->a:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzub;->c:Lcom/google/android/gms/internal/ads/zzwm;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzwm;->b:I

    long-to-int p2, p1

    return p2
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzub;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzub;->c:Lcom/google/android/gms/internal/ads/zzwm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzub;->d:Lcom/google/android/gms/internal/ads/zzub;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzub;->d:Lcom/google/android/gms/internal/ads/zzub;

    return-object v1
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzwn;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzub;->d:Lcom/google/android/gms/internal/ads/zzub;

    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzub;->c:Lcom/google/android/gms/internal/ads/zzwm;

    if-nez v1, :cond_9

    goto :goto_a

    :cond_9
    return-object v0

    :cond_a
    :goto_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e(JI)V
    .registers 6

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzub;->c:Lcom/google/android/gms/internal/ads/zzwm;

    if-nez p3, :cond_6

    const/4 p3, 0x1

    goto :goto_7

    :cond_6
    const/4 p3, 0x0

    :goto_7
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzub;->a:J

    const-wide/32 v0, 0x10000

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzub;->b:J

    return-void
.end method
