###### Class com.google.android.gms.internal.games.zzgc (com.google.android.gms.internal.games.zzgc)
.class final Lcom/google/android/gms/internal/games/zzgc;
.super Lcom/google/android/gms/internal/games/zzft;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/games/zzft<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final s:Lcom/google/android/gms/internal/games/zzft;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/games/zzft<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient q:[Ljava/lang/Object;

.field private final transient r:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games/zzgc;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/games/zzgc;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/games/zzgc;->s:Lcom/google/android/gms/internal/games/zzft;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzft;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzgc;->q:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/games/zzgc;->r:I

    return-void
.end method


# virtual methods
.method final c([Ljava/lang/Object;I)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzgc;->q:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzgc;->r:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Lcom/google/android/gms/internal/games/zzgc;->r:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games/zzgc;->r:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/games/zzfo;->c(II)I

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzgc;->q:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method final i()[Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzgc;->q:[Ljava/lang/Object;

    return-object v0
.end method

.method final j()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final k()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games/zzgc;->r:I

    return v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games/zzgc;->r:I

    return v0
.end method
