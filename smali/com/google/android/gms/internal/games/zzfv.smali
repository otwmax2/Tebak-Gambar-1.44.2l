###### Class com.google.android.gms.internal.games.zzfv (com.google.android.gms.internal.games.zzfv)
.class final Lcom/google/android/gms/internal/games/zzfv;
.super Lcom/google/android/gms/internal/games/zzft;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final transient q:I

.field private final transient r:I

.field private final synthetic s:Lcom/google/android/gms/internal/games/zzft;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzft;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzfv;->s:Lcom/google/android/gms/internal/games/zzft;

    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzft;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/games/zzfv;->q:I

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/games/zzfv;->r:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games/zzfv;->r:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/games/zzfo;->c(II)I

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfv;->s:Lcom/google/android/gms/internal/games/zzft;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfv;->q:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final i()[Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfv;->s:Lcom/google/android/gms/internal/games/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfs;->i()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final j()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfv;->s:Lcom/google/android/gms/internal/games/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfs;->j()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfv;->q:I

    add-int/2addr v0, v1

    return v0
.end method

.method final k()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfv;->s:Lcom/google/android/gms/internal/games/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfs;->j()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfv;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfv;->r:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final o(II)Lcom/google/android/gms/internal/games/zzft;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games/zzfv;->r:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/games/zzfo;->d(III)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfv;->s:Lcom/google/android/gms/internal/games/zzft;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfv;->q:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/games/zzft;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/games/zzft;

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games/zzfv;->r:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/games/zzft;->o(II)Lcom/google/android/gms/internal/games/zzft;

    move-result-object p1

    return-object p1
.end method
