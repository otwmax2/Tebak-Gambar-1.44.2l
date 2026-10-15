###### Class com.google.android.gms.internal.games.zzfr (com.google.android.gms.internal.games.zzfr)
.class Lcom/google/android/gms/internal/games/zzfr;
.super Lcom/google/android/gms/internal/games/zzfu;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/games/zzfu<",
        "TE;>;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field b:I

.field c:Z


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzfu;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzfr;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/games/zzfr;->b:I

    return-void
.end method

.method private final d(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfr;->a:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_2e

    .line 2
    array-length v1, v0

    if-ltz p1, :cond_26

    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_18

    add-int/lit8 p1, p1, -0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/lit8 v1, p1, 0x1

    :cond_18
    if-gez v1, :cond_1d

    const v1, 0x7fffffff

    .line 4
    :cond_1d
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzfr;->a:[Ljava/lang/Object;

    .line 5
    iput-boolean v2, p0, Lcom/google/android/gms/internal/games/zzfr;->c:Z

    return-void

    .line 6
    :cond_26
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "cannot store more than MAX_VALUE elements"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 7
    :cond_2e
    iget-boolean p1, p0, Lcom/google/android/gms/internal/games/zzfr;->c:Z

    if-eqz p1, :cond_3c

    .line 8
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzfr;->a:[Ljava/lang/Object;

    .line 9
    iput-boolean v2, p0, Lcom/google/android/gms/internal/games/zzfr;->c:Z

    :cond_3c
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/games/zzfu;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/games/zzfu<",
            "TE;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_22

    .line 2
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/games/zzfr;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/games/zzfr;->d(I)V

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/internal/games/zzfs;

    if-eqz v1, :cond_22

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/games/zzfs;

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/games/zzfr;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfr;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/games/zzfs;->c([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/games/zzfr;->b:I

    return-object p0

    .line 7
    :cond_22
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/games/zzfu;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/games/zzfu;

    return-object p0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfu;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games/zzfr;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfr;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfr;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/games/zzfr<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/games/zzfo;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/games/zzfr;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games/zzfr;->d(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfr;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfr;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/games/zzfr;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method
