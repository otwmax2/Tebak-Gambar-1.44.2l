###### Class com.google.android.gms.internal.ads.zzts (com.google.android.gms.internal.ads.zzts)
.class final Lcom/google/android/gms/internal/ads/zzts;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzuj;


# instance fields
.field private final a:I

.field final synthetic b:Lcom/google/android/gms/internal/ads/zztv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zztv;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzts;->b:Lcom/google/android/gms/internal/ads/zztv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzts;->a:I

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzts;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzts;->a:I

    return p0
.end method


# virtual methods
.method public final W(J)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzts;->b:Lcom/google/android/gms/internal/ads/zztv;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzts;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zztv;->N(IJ)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzgr;I)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzts;->b:Lcom/google/android/gms/internal/ads/zztv;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzts;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztv;->M(ILcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzgr;I)I

    move-result p1

    return p1
.end method

.method public final b()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzts;->b:Lcom/google/android/gms/internal/ads/zztv;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzts;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zztv;->A(I)Z

    move-result v0

    return v0
.end method

.method public final d()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzts;->b:Lcom/google/android/gms/internal/ads/zztv;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzts;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zztv;->y(I)V

    return-void
.end method
