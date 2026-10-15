###### Class com.google.android.gms.internal.ads.zzfqi (com.google.android.gms.internal.ads.zzfqi)
.class final Lcom/google/android/gms/internal/ads/zzfqi;
.super Lcom/google/android/gms/internal/ads/zzfom;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final q:Lcom/google/android/gms/internal/ads/zzfqk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfqk;I)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzfom;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqi;->q:Lcom/google/android/gms/internal/ads/zzfqk;

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqi;->q:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
