###### Class com.google.android.gms.internal.ads.zzgqt (com.google.android.gms.internal.ads.zzgqt)
.class public final Lcom/google/android/gms/internal/ads/zzgqt;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Ljava/util/List;

.field private final p:Lcom/google/android/gms/internal/ads/zzgqs;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgqs;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqt;->o:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgqt;->p:Lcom/google/android/gms/internal/ads/zzgqs;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqt;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxc;->c(I)Lcom/google/android/gms/internal/ads/zzaxc;

    move-result-object p1

    if-nez p1, :cond_14

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxc;->p:Lcom/google/android/gms/internal/ads/zzaxc;

    :cond_14
    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqt;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
