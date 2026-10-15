###### Class com.google.android.gms.ads.internal.util.g (com.google.android.gms.ads.internal.util.g)
.class final Lcom/google/android/gms/ads/internal/util/g;
.super Lcom/google/android/gms/internal/ads/zzalt;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic C:[B

.field final synthetic D:Ljava/util/Map;

.field final synthetic E:Lcom/google/android/gms/internal/ads/zzbyz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzbo;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzakt;Lcom/google/android/gms/internal/ads/zzaks;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/zzbyz;)V
    .registers 9

    .line 1
    iput-object p6, p0, Lcom/google/android/gms/ads/internal/util/g;->C:[B

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/util/g;->D:Ljava/util/Map;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/util/g;->E:Lcom/google/android/gms/internal/ads/zzbyz;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzalt;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzakt;Lcom/google/android/gms/internal/ads/zzaks;)V

    return-void
.end method


# virtual methods
.method public final O()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzajw;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/g;->C:[B

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    return-object v0
.end method

.method protected final Q(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/g;->E:Lcom/google/android/gms/internal/ads/zzbyz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbyz;->g(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzalt;->Q(Ljava/lang/String;)V

    return-void
.end method

.method public final o()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzajw;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/g;->D:Ljava/util/Map;

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method protected final bridge synthetic r(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzalt;->Q(Ljava/lang/String;)V

    return-void
.end method
