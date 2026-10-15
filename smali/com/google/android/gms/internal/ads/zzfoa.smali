###### Class com.google.android.gms.internal.ads.zzfoa (com.google.android.gms.internal.ads.zzfoa)
.class final Lcom/google/android/gms/internal/ads/zzfoa;
.super Lcom/google/android/gms/internal/ads/zzfof;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field final synthetic u:Lcom/google/android/gms/internal/ads/zzfob;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfob;Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfoa;->u:Lcom/google/android/gms/internal/ads/zzfob;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzfof;-><init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final d(I)I
    .registers 2

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method final e(I)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoa;->u:Lcom/google/android/gms/internal/ads/zzfob;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfob;->a:Lcom/google/android/gms/internal/ads/zzfng;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfof;->q:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, "index"

    .line 2
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfnu;->b(IILjava/lang/String;)I

    :goto_f
    if-ge p1, v2, :cond_1f

    .line 3
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfng;->b(C)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_20

    :cond_1c
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_1f
    const/4 p1, -0x1

    :goto_20
    return p1
.end method
