###### Class com.google.android.gms.internal.ads.zzbyb (com.google.android.gms.internal.ads.zzbyb)
.class final Lcom/google/android/gms/internal/ads/zzbyb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:J

.field private b:J

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzbyc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbyc;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyb;->c:Lcom/google/android/gms/internal/ads/zzbyc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbyb;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbyb;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbyb;->b:J

    return-wide v0
.end method

.method public final b()Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbyb;->a:J

    const-string v3, "topen"

    .line 2
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbyb;->b:J

    const-string v3, "tclose"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyb;->c:Lcom/google/android/gms/internal/ads/zzbyc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbyc;->b(Lcom/google/android/gms/internal/ads/zzbyc;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbyb;->b:J

    return-void
.end method

.method public final d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyb;->c:Lcom/google/android/gms/internal/ads/zzbyc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbyc;->b(Lcom/google/android/gms/internal/ads/zzbyc;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbyb;->a:J

    return-void
.end method
