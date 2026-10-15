###### Class com.google.android.gms.internal.ads.zzbtu (com.google.android.gms.internal.ads.zzbtu)
.class final Lcom/google/android/gms/internal/ads/zzbtu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/ads/zzbts;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbtv;Lcom/google/android/gms/internal/ads/zzbts;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->a:J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtu;->b:Lcom/google/android/gms/internal/ads/zzbts;

    return-void
.end method
