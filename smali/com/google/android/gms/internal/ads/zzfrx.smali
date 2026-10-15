###### Class com.google.android.gms.internal.ads.zzfrx (com.google.android.gms.internal.ads.zzfrx)
.class final Lcom/google/android/gms/internal/ads/zzfrx;
.super Lcom/google/android/gms/internal/ads/zzfqk;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final transient q:[Ljava/lang/Object;

.field private final transient r:I

.field private final transient s:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrx;->q:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfrx;->r:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfrx;->s:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfrx;->s:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfnu;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrx;->q:[Ljava/lang/Object;

    add-int/2addr p1, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfrx;->r:I

    add-int/2addr p1, v1

    .line 2
    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method final l()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfrx;->s:I

    return v0
.end method
