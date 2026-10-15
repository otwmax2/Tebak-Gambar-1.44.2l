###### Class com.google.android.gms.internal.games.zzfe (com.google.android.gms.internal.games.zzfe)
.class public abstract Lcom/google/android/gms/internal/games/zzfe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/games/zzfd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/games/zzfe;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfe;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games/zzfd;

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfd;->a()V

    :cond_d
    return-void
.end method

.method protected abstract b()Lcom/google/android/gms/internal/games/zzfd;
.end method

.method public final c(Ljava/lang/String;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfe;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games/zzfd;

    if-nez v0, :cond_1f

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfe;->b()Lcom/google/android/gms/internal/games/zzfd;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzfe;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfe;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games/zzfd;

    .line 5
    :cond_1f
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/games/zzfd;->e(Ljava/lang/String;I)V

    return-void
.end method
