###### Class com.google.android.gms.internal.ads.zzfrz (com.google.android.gms.internal.ads.zzfrz)
.class final Lcom/google/android/gms/internal/ads/zzfrz;
.super Lcom/google/android/gms/internal/ads/zzfqp;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final v:[Ljava/lang/Object;

.field static final w:Lcom/google/android/gms/internal/ads/zzfrz;


# instance fields
.field final transient q:[Ljava/lang/Object;

.field private final transient r:I

.field final transient s:[Ljava/lang/Object;

.field private final transient t:I

.field private final transient u:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    .line 1
    sput-object v4, Lcom/google/android/gms/internal/ads/zzfrz;->v:[Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrz;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfrz;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfrz;->w:Lcom/google/android/gms/internal/ads/zzfrz;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrz;->q:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfrz;->r:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfrz;->s:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzfrz;->t:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzfrz;->u:I

    return-void
.end method


# virtual methods
.method final c([Ljava/lang/Object;I)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrz;->q:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfrz;->u:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfrz;->u:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrz;->s:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_20

    array-length v2, v0

    if-nez v2, :cond_9

    goto :goto_20

    .line 2
    :cond_9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqc;->b(Ljava/lang/Object;)I

    move-result v2

    :goto_d
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfrz;->t:I

    and-int/2addr v2, v3

    .line 3
    aget-object v3, v0, v2

    if-nez v3, :cond_15

    return v1

    .line 4
    :cond_15
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 p1, 0x1

    return p1

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_20
    :goto_20
    return v1
.end method

.method final g()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfrz;->u:I

    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfrz;->r:I

    return v0
.end method

.method final i()I
    .registers 2

    const/4 v0, 0x0

    return v0
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

.method final m()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrz;->q:[Ljava/lang/Object;

    return-object v0
.end method

.method final o()Lcom/google/android/gms/internal/ads/zzfqk;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrz;->q:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfrz;->u:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqk;->q([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfrz;->u:I

    return v0
.end method

.method final y()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
