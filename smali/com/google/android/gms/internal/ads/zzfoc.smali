###### Class com.google.android.gms.internal.ads.zzfoc (com.google.android.gms.internal.ads.zzfoc)
.class final Lcom/google/android/gms/internal/ads/zzfoc;
.super Lcom/google/android/gms/internal/ads/zzfof;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field final synthetic u:Lcom/google/android/gms/internal/ads/zzfod;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfod;Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfoc;->u:Lcom/google/android/gms/internal/ads/zzfod;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzfof;-><init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final d(I)I
    .registers 2

    return p1
.end method

.method public final e(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfof;->q:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit16 p1, p1, 0xfa0

    if-ge p1, v0, :cond_b

    return p1

    :cond_b
    const/4 p1, -0x1

    return p1
.end method
