###### Class com.google.android.gms.internal.games.zzfx (com.google.android.gms.internal.games.zzfx)
.class public final Lcom/google/android/gms/internal/games/zzfx;
.super Lcom/google/android/gms/internal/games/zzfr;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/games/zzfr<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private d:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games/zzfr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/games/zzfu;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/games/zzfo;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/games/zzfr;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/games/zzfu;

    return-object p0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfu;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/games/zzfo;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/games/zzfx;->d:[Ljava/lang/Object;

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/games/zzfr;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfr;

    return-object p0
.end method

.method public final synthetic c(Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfr;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games/zzfu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/games/zzfx;

    return-object p1
.end method

.method public final e()Lcom/google/android/gms/internal/games/zzfy;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/games/zzfy<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games/zzfr;->b:I

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzfr;->a:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/games/zzfy;->p(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfy;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/games/zzfr;->b:I

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/games/zzfr;->c:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/google/android/gms/internal/games/zzfx;->d:[Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfr;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzfy;->s(Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfy;

    move-result-object v0

    return-object v0

    .line 7
    :cond_23
    sget-object v0, Lcom/google/android/gms/internal/games/zzgb;->v:Lcom/google/android/gms/internal/games/zzgb;

    return-object v0
.end method
