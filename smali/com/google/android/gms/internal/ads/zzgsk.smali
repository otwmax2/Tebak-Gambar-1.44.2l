###### Class com.google.android.gms.internal.ads.zzgsk (com.google.android.gms.internal.ads.zzgsk)
.class final Lcom/google/android/gms/internal/ads/zzgsk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/util/ArrayDeque;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgsj;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzgsk;Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgsk;->b(Lcom/google/android/gms/internal/ads/zzgpe;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgsk;->b(Lcom/google/android/gms/internal/ads/zzgpe;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgpe;

    :goto_e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_26

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgpe;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgso;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzgso;-><init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgsn;)V

    move-object p1, v0

    goto :goto_e

    :cond_26
    return-object p1
.end method

.method private final b(Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->r()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsk;->c(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgso;->S(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9b

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v2

    if-lt v2, v1, :cond_2b

    goto :goto_9b

    .line 5
    :cond_2b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgso;->S(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgpe;

    :goto_37
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v2

    if-ge v2, v0, :cond_5d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgpe;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgso;

    .line 9
    invoke-direct {v4, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzgso;-><init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgsn;)V

    move-object v1, v4

    goto :goto_37

    :cond_5d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgso;

    .line 10
    invoke-direct {v0, v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzgso;-><init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgsn;)V

    :goto_62
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_95

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result p1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgsk;->c(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgso;->S(I)I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v1

    if-ge v1, p1, :cond_95

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgpe;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgso;

    .line 16
    invoke-direct {v1, p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzgso;-><init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgsn;)V

    move-object v0, v1

    goto :goto_62

    :cond_95
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 18
    :cond_9b
    :goto_9b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsk;->a:Ljava/util/ArrayDeque;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 20
    :cond_a1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgso;

    if-eqz v0, :cond_b6

    .line 21
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgso;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgso;->T(Lcom/google/android/gms/internal/ads/zzgso;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgsk;->b(Lcom/google/android/gms/internal/ads/zzgpe;)V

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgso;->P(Lcom/google/android/gms/internal/ads/zzgso;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgsk;->b(Lcom/google/android/gms/internal/ads/zzgpe;)V

    return-void

    .line 24
    :cond_b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_cb

    :goto_ca
    throw v0

    :goto_cb
    goto :goto_ca
.end method

.method private static final c(I)I
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgso;->x:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_d

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    :cond_d
    return p0
.end method
