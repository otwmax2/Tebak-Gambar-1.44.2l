###### Class com.google.android.gms.internal.ads.zzfrq (com.google.android.gms.internal.ads.zzfrq)
.class final Lcom/google/android/gms/internal/ads/zzfrq;
.super Lcom/google/android/gms/internal/ads/zzfrs;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final o:Lcom/google/android/gms/internal/ads/zzfrq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfrq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfrq;->o:Lcom/google/android/gms/internal/ads/zzfrq;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfrs;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzfrs;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfsa;->o:Lcom/google/android/gms/internal/ads/zzfsa;

    return-object v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Ordering.natural()"

    return-object v0
.end method
