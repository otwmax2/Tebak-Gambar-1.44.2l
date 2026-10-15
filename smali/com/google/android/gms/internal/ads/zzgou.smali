###### Class com.google.android.gms.internal.ads.zzgou (com.google.android.gms.internal.ads.zzgou)
.class final Lcom/google/android/gms/internal/ads/zzgou;
.super Lcom/google/android/gms/internal/ads/zzgow;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private o:I

.field private final p:I

.field final synthetic q:Lcom/google/android/gms/internal/ads/zzgpe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgou;->q:Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgow;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgou;->o:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgou;->p:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgou;->o:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgou;->p:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgou;->o:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgou;->p:I

    if-ge v0, v1, :cond_11

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgou;->o:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgou;->q:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgpe;->m(I)B

    move-result v0

    return v0

    .line 3
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
