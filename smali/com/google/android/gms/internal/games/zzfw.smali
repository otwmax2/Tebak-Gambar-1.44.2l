###### Class com.google.android.gms.internal.games.zzfw (com.google.android.gms.internal.games.zzfw)
.class final Lcom/google/android/gms/internal/games/zzfw;
.super Lcom/google/android/gms/internal/games/zzfq;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/games/zzfq<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final q:Lcom/google/android/gms/internal/games/zzft;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/games/zzft<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzft;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/games/zzft<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/games/zzfq;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzfw;->q:Lcom/google/android/gms/internal/games/zzft;

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfw;->q:Lcom/google/android/gms/internal/games/zzft;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
