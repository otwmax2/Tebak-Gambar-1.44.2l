###### Class com.google.android.gms.ads.nonagon.signalgeneration.zzak (com.google.android.gms.ads.nonagon.signalgeneration.zzak)
.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final b:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final c:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfda;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzan;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzan;->a()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzam;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzak;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzctu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzctu;->a()Lcom/google/android/gms/internal/ads/zzctt;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfcu;->K:Lcom/google/android/gms/internal/ads/zzfcu;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzctt;->c()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzfcs;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzfcr;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfcr;->f(Lcom/google/android/gms/internal/ads/zzftq;)Lcom/google/android/gms/internal/ads/zzfcr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->c5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfcr;->i(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/zzfcr;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcr;->a()Lcom/google/android/gms/internal/ads/zzfcf;

    move-result-object v0

    return-object v0
.end method
