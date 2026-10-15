###### Class com.google.android.gms.internal.ads.zzfof (com.google.android.gms.internal.ads.zzfof)
.class abstract Lcom/google/android/gms/internal/ads/zzfof;
.super Lcom/google/android/gms/internal/ads/zzfna;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field final q:Ljava/lang/CharSequence;

.field final r:Lcom/google/android/gms/internal/ads/zzfng;

.field s:I

.field t:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfna;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfof;->s:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->a(Lcom/google/android/gms/internal/ads/zzfoh;)Lcom/google/android/gms/internal/ads/zzfng;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfof;->r:Lcom/google/android/gms/internal/ads/zzfng;

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfof;->t:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfof;->q:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .registers 6
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfof;->s:I

    :cond_2
    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfof;->s:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_63

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfof;->e(I)I

    move-result v1

    if-ne v1, v2, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfof;->q:Ljava/lang/CharSequence;

    .line 2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfof;->s:I

    const/4 v3, -0x1

    goto :goto_1d

    .line 3
    :cond_17
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfof;->d(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzfof;->s:I

    :goto_1d
    if-ne v3, v0, :cond_2e

    add-int/lit8 v3, v3, 0x1

    .line 4
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzfof;->s:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfof;->q:Ljava/lang/CharSequence;

    .line 5
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v3, v1, :cond_2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfof;->s:I

    goto :goto_2

    :cond_2e
    if-ge v0, v1, :cond_35

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfof;->q:Ljava/lang/CharSequence;

    .line 6
    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_35
    if-ge v0, v1, :cond_3e

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfof;->q:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    .line 7
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_3e
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfof;->t:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_55

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfof;->q:Ljava/lang/CharSequence;

    .line 8
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfof;->s:I

    if-le v1, v0, :cond_58

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfof;->q:Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, -0x1

    .line 9
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    goto :goto_58

    :cond_55
    add-int/2addr v3, v2

    .line 10
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzfof;->t:I

    .line 11
    :cond_58
    :goto_58
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfof;->q:Ljava/lang/CharSequence;

    .line 12
    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_67

    .line 13
    :cond_63
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->b()Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_67
    return-object v0
.end method

.method abstract d(I)I
.end method

.method abstract e(I)I
.end method
