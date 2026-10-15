###### Class com.google.android.gms.internal.ads.zzfrv (com.google.android.gms.internal.ads.zzfrv)
.class final Lcom/google/android/gms/internal/ads/zzfrv;
.super Lcom/google/android/gms/internal/ads/zzfqp;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final transient q:Lcom/google/android/gms/internal/ads/zzfqn;

.field private final transient r:[Ljava/lang/Object;

.field private final transient s:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfqn;[Ljava/lang/Object;II)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrv;->q:Lcom/google/android/gms/internal/ads/zzfqn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfrv;->r:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzfrv;->s:I

    return-void
.end method

.method static synthetic C(Lcom/google/android/gms/internal/ads/zzfrv;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfrv;->s:I

    return p0
.end method

.method static synthetic D(Lcom/google/android/gms/internal/ads/zzfrv;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfrv;->r:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method final c([Ljava/lang/Object;I)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqf;->j()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqf;->c([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfrv;->q:Lcom/google/android/gms/internal/ads/zzfqn;

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzfqn;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    return p1

    :cond_1f
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqf;->j()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqk;->C(I)Lcom/google/android/gms/internal/ads/zzfsk;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/zzfsj;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqf;->j()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqk;->C(I)Lcom/google/android/gms/internal/ads/zzfsk;

    move-result-object v0

    return-object v0
.end method

.method final o()Lcom/google/android/gms/internal/ads/zzfqk;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfru;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfru;-><init>(Lcom/google/android/gms/internal/ads/zzfrv;)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfrv;->s:I

    return v0
.end method
